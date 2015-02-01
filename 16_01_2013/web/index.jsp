<%-- 
    Document   : index
    Created on : 22-gen-2015, 11.29.40
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="style.css" type="text/css">
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
                        <tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td class="sunday">6</td></tr>
                        <tr><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td class="sunday">13</td></tr>
                        <tr><td>14</td><td>15</td><td>16</td><td>17</td><td>18</td><td>19</td><td class="sunday">20</td></tr>
                        <tr><td>21</td><td class = "today">22</td><td>23</td><td>24</td><td>25</td><td>26</td><td class="sunday">27</td></tr>
                        <tr><td>28</td><td>29</td><td>30</td><td>31</td><td></td><td></td><td class="sunday"></td></tr>
                    </tbody>
                </table>
                <aside>
                    <p><span class="underline">John Howard Carpenter (Carthage, <span class="bold italic">16 gennaio 1948</span>)</span> &egrave; un regista, sceneggiatore, compositore, attore, produttore cinematografico e montatore statunitense.</p>
                    <p>Tra i suoi lavori pi&ugrave; famosi si annoverano Distretto 13: le brigate della morte (1976), Halloween, la notte delle streghe (1978), 1997: fuga da New York (1981), La cosa (1982), Christine, la macchina infernale (1983), Essi vivono (1988) e Il seme della follia (1994).</p>
                    <p>Carpenter afferma spesso di essere stato influenzato dalle opere di Howard Hawks, Alfred Hitchcock e dalla serie televisiva Ai confini della realt&agrave;.</p>
                    <p>I suoi film glorificano spesso degli anti-eroi, personaggi di estrazione proletaria e i suoi soggetti hanno spesso tematiche che riflettono una forte critica sulla societ&agrave; capitalistica americana.</p>
                </aside>
            </article>
            <footer>
            </footer>
        </div>
    </body>
</html>
