import prisma from "@/lib/prisma";
import { NextResponse } from "next/server";

export const GET = async (request) => {
  try {
    const { searchParams } = new URL(request.url);
    const dateParam = searchParams.get("date");
    if (!dateParam) {
      return NextResponse.json({ error: "Date is required" }, { status: 400 });
    }
    const date = new Date(dateParam);
    const rapports = await prisma.rapport.findMany({
      where: {
        date: {
          equals: date,
        },
      },
    });
    return NextResponse.json(rapports, { status: 200 });
  } catch (error) {
    console.error(error);
    return NextResponse.json({ error: "An error occured" }, { status: 500 });
  }
};

export const POST = async (request) => {
  try {
    const { idMedecin, idVisiteur, bilan, motif, date, medicaments } =
      await request.json();
    const rapport = await prisma.rapport.create({
      data: {
        idMedecin,
        idVisiteur,
        bilan,
        motif,
        date,
      },
    });
    const idRapport = rapport.id;
    if (medicaments.length > 0) {
      medicaments.map(async (medicament) => {
        await prisma.offrir.create({
          data: {
            idRapport: parseInt(idRapport),
            idMedicament: String(medicament.idMedicament),
            quantite: medicament.qte,
          },
        });
      });
    }
    return NextResponse.json(rapport, { status: 200 });
  } catch (error) {
    console.error(error);
    return NextResponse.json({ error: "An error occured" }, { status: 500 });
  }
};

export const PUT = async (request) => {
  try {
    const { id, motif, bilan } = await request.json();
    const rapport = await prisma.rapport.update({
      where: {
        id: parseInt(id),
      },
      data: {
        motif,
        bilan,
      },
    });
    return NextResponse.json(rapport, { status: 200 });
  } catch (error) {
    console.error(error);
    return NextResponse.json({ error: "An error occured" }, { status: 500 });
  }
};
