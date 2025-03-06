import prisma from "@/lib/prisma";
import { NextResponse } from "next/server";

function convertBigIntToString(obj) {
  return JSON.parse(
    JSON.stringify(obj, (_, value) =>
      typeof value === "bigint" ? value.toString() : value
    )
  );
}

export const GET = async (request, { params }) => {
  try {
    const { id } = await params;
    const visiteur = await prisma.visiteur.findUnique({
      where: { id },
    });
    if (!visiteur) {
      return NextResponse.json(
        { error: "Visiteur not found" },
        { status: 404 }
      );
    }
    const serializedVisiteur = convertBigIntToString(visiteur);
    return NextResponse.json(serializedVisiteur, { status: 200 });
  } catch (error) {
    console.error(error);
    return NextResponse.json({ error: "An error occured" }, { status: 500 });
  }
};
