// seed.js
import fs from 'fs';
import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function seed() {
  try {
    // Lire le fichier JSON
    const jsonData = fs.readFileSync('champions.json', 'utf8');
    const champions = JSON.parse(jsonData);

    // Insérer les données dans la base de données
    await prisma.champion.createMany({
      data: champions.map(champion => ({
        name: champion.name,
        role: champion.role
      })),
    });

    console.log('Seed terminé avec succès');
  } catch (error) {
    console.error('Erreur lors du seed :', error);
  } finally {
    await prisma.$disconnect();
  }
}

seed();
