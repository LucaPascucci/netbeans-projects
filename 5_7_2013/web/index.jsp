<%-- 
    Document   : index
    Created on : 30-gen-2015, 15.35.30
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="container">
            <header>
                <%@include file="header.jspf"%>
            </header>
            <nav>
                <%@include file="nav.jspf"%>
            </nav>
            <%@include file="status.jspf"%>
            <article>
                <table>
                    <thead>
                        <th>Lun</th><th>Mar</th><th>Mer</th><th>Gio</th><th>Ven</th><th>Sab</th><th>Dom</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td><td>2</td><td>3</td><td>4</td><td id="today">5</td><td>6</td><td class="sunday">7</td>
                        </tr>
                        <tr>
                            <td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td><td class="sunday">14</td>
                        </tr>
                        <tr>
                            <td>15</td><td>16</td><td>17</td><td class="specialday">18</td><td>19</td><td>20</td><td class="sunday">21</td>
                        </tr>
                        <tr>
                            <td>22</td><td>23</td><td>24</td><td>25</td><td>26</td><td>27</td><td class="sunday specialday">28</td>
                        </tr>
                        <tr>
                            <td>29</td><td>30</td><td class="specialday">31</td><td></td><td></td><td></td><td class="sunday"></td>
                        </tr>
                    </tbody>
                </table>
                <aside>
                    <p class="fontsize"><span class ="underline">Il 5 luglio del 1903 parte il primo <span class="bold italic">Tour de France</span></span>, uno dei tre grandi giri maschili di ciclismo su strada. A partire da quella prima data la corsa si &egrave; svolta ogni anno, a eccezione dei periodi delle due guerre mondiali. Dal 1984 &egrave; stato affiancato dal Giro di Francia femminile.</p>
                </aside>
                <section>
                    5 luglio 1687
                    <ul>
                        <li>Viene pubblicato il Philosophiae Naturalis Principia Mathematica di Isaac Newton</li>
                    </ul>
                </section>
            </article>
            <footer>
                
            </footer>
        </div>
    </body>
</html>
