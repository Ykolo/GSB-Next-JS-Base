import prisma from "@/lib/prisma";
import { NextResponse } from "next/server";

export const GET = async (request, { params }) => {
  try {
    const { id } = await params;
    const medecin = await prisma.medecin.findUnique({
      where: {
        id: parseInt(id),
      },
    });
    if (!medecin) {
      return NextResponse.json({ error: "Medecin not found" }, { status: 404 });
    }
    return NextResponse.json(medecin, { status: 200 });
  } catch (error) {
    console.error(error);
    return NextResponse.json({ error: "An error occured" }, { status: 500 });
  }
};
