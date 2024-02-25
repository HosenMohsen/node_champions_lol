import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()


const getChampions = (req, res) => {
   prisma.champion.findMany()
    .then((champions) => {
        res.json(champions)
    })
    .catch((error) => {
        res.json(error)
    })
 
}

const getChampion = (req, res) => {
 let id = Number(req.params.id)

 prisma.champion.findUnique({
    where: {
        id: id
    }
 })
    .then((champion) => {
        res.json(champion)
    })
    .catch((error) => {
        res.json(error)
    }) 
}

const createChampion = (req, res) => {
    let champion = req.body
    prisma.champion.create({
        data:{
            name: champion.name,
            role: champion.role
        }
    })
    .then((champion) => {
        res.json(champion)
    })
    .catch((error) => {
        res.json({error: "Champion was not created"})
    })
}

const updateChampion = (req, res) => {
    let id = Number(req.params.id)
    let champion = req.body
    console.log(champion)
    prisma.champion.update({
        where: {
            id: id
        },
        data: {
            name: champion.name,
            role: champion.role
        }
    
    })
    .then((champion) => {
        res.json(champion)
    })
    .catch((error) => {
        res.json(error)
    }) 
}

const deleteChampion = (req, res) => {
    let id = Number(req.params.id)
    prisma.champion.delete({
        where: {
            id: id
        }
    })
    .then((champion) => {
        res.json(champion)
    })
    .catch((error) => {
        res.json(error)
    })
}


export { getChampions, getChampion, createChampion, updateChampion, deleteChampion}