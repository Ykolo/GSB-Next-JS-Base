import prisma from "@/lib/prisma";
import { NextResponse } from "next/server";

export const GET = async (request, { params }) => {
  try {
    const { id } = params;

    // Rechercher le visiteur
    const visiteur = await prisma.visiteur.findUnique({
      where: { id: Number(id) }, // ⚠️ Convertir en Number si l'ID est stocké en BigInt
    });

    if (!visiteur) {
      return NextResponse.json(
        { error: "Visiteur not found" },
        { status: 404 }
      );
    }

    // Sérialiser tous les BigInt en String
    const serializedVisiteur = JSON.parse(
      JSON.stringify(visiteur, (_, value) =>
        typeof value === "bigint" ? value.toString() : value
      )
    );

    return NextResponse.json(serializedVisiteur, { status: 200 });
  } catch (error) {
    console.error(error);
    return NextResponse.json({ error: "An error occurred" }, { status: 500 });
  }
};
