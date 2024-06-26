import {Elysia} from 'elysia';
import {PrismaClient} from '@prisma/client';

new PrismaClient();
const app = new Elysia();

app.get('/', () => 'Hello Elysia');
app.listen(3000);

console.log(`🦊 Elysia is running at ${app.server?.hostname}:${app.server?.port}`);
