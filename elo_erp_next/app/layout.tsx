import './globals.css';

export const metadata = { title: 'Elo+ Gestão', description: 'ERP comercial Elo+ Brindes' };

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return <html lang="pt-BR"><body>{children}</body></html>;
}
