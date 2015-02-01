<%-- 
    Document   : index
    Created on : 27-gen-2015, 10.03.10
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="style.css" rel="stylesheet" text="text/css">
    </head>
    <body>
        <div id="container">
            <header>
                <%@include file="header.jspf"%>
            </header>
            <nav>
                <%@include file="nav.jspf"%> 
            </nav>
            <article>
                <table>
                    <thead>
                        <th>Lun</th><th>Mar</th><th>Mer</th><th>Gio</th><th>Ven</th><th>Sab</th><th>Dom</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td></td><td></td><td></td><td></td><td>1</td><td>2</td><td class="sunday">3</td>
                        </tr>
                        <tr>
                            <td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td class="sunday">10</td>
                        </tr>
                        <tr>
                            <td>11</td><td id="today">12</td><td>13</td><td>14</td><td>15</td><td>16</td><td class="sunday">17</td>
                        </tr>
                        <tr>
                            <td>18</td><td>19</td><td>20</td><td>21</td><td>22</td><td>23</td><td class="sunday">24</td>
                        </tr>
                        <tr>
                            <td>25</td><td>26</td><td>27</td><td>28</td><td></td><td></td><td class="sunday"></td>
                        </tr>
                    </tbody>
                </table> 
                <section>
                    12 febbraio 1912
                    <ul>
                        <li>La Cina adotta il Calendario Gregoriano.</li>
                        <li>L'ultimo Imperatore Cinese, Pu Yi abdica in favore della Repubblica.</li>
                    </ul>
                </section>
                <aside>
                    <p><span id="underline">Charles Robert Darwin (Shrewsbury, <span class="bold italic">12 febbraio 1809 - Londra, 19 aprile 1882</span>)</span> <span class="show"> &egrave; stato un naturalista britannico, 
                        celebre per aver formulato la teoria dell'evoluzione delle specie animali e vegetali per selezione naturale agente sulla variabilit&aacute; dei caratteri 
                        (origine delle specie), per aver teorizzato la discendenza di tutti i primati (uomo compreso) da un antenato comune (origine dell'uomo) 
                        e per aver teorizzato la possibile esistenza di un antenato comune a tutte le specie viventi.</span>
                    </p>
                    <span class="show">
                    <p>
                        Pubblic&oacute; la sua teoria sull'evoluzione delle specie nel libro L'origine delle specie (1859), 
                        che &egrave; rimasto il suo lavoro pi&uacute; noto.
                    </p>
                    <p>
                        Raccolse molti dei dati su cui bas&oacute; la sua teoria durante un viaggio intorno al mondo sulla nave HMS Beagle, 
                        e in particolare durante la sua sosta alle Isole Gal&aacute;pagos.
                    <p>
                    </span>
                </aside>
            </article>
            <footer>

            </footer>
        </div>
    </body>
</html>
