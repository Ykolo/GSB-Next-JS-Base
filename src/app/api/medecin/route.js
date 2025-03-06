import prisma from "@/lib/prisma";
import { NextResponse } from "next/server";

export const PUT = async (request) => {
  try {
    const { id, adresse, tel, specialite } = await request.json();
    const medecin = await prisma.medecin.update({
      where: {
        id: parseInt(id),
      },
      data: {
        adresse,
        tel,
        specialitecomplementaire: specialite,
      },
    });
    return NextResponse.json(medecin, { status: 200 });
  } catch (error) {
    console.error(error);
    return NextResponse.json({ error: "An error occured" }, { status: 500 });
  }
};
