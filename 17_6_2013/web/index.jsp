<%-- 
    Document   : index
    Created on : 29-gen-2015, 10.05.46
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
            <article>
                <table>
                    <thead>
                    <th>Lun</th><th>Mar</th><th>Mer</th><th>Gio</th><th>Ven</th><th>Sab</th><th>Dom</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td></td><td></td><td></td><td></td><td></td><td>1</td><td class="sunday" id="today">2</td>
                        </tr>
                        <tr>
                            <td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td class="sunday">9</td>
                        </tr>
                        <tr>
                            <td>10</td><td>11</td><td>12</td><td>13</td><td>14</td><td>15</td><td class="sunday">16</td>
                        </tr>
                        <tr>
                            <td>17</td><td>18</td><td>19</td><td>20</td><td>21</td><td>22</td><td class="sunday">23</td>
                        </tr>
                        <tr>
                            <td>24</td><td>25</td><td>26</td><td>27</td><td>28</td><td>29</td><td class="sunday">30</td>
                        </tr>
                    </tbody>
                </table>
                <section>
                    2 giugno 1897
                    <ul>
                        <li>Mark Twain, rispondendo alle voci sulla sua morte, viene citato dal New York Journal per aver detto, "La notizia della mia morte &egrave; un'esagerazione"</li>
                    </ul>
                </section>
                <aside>
                    <p class="underline">La <span class="italic bold">Festa della Repubblica Italiana</span> viene celebrata il <span class="italic bold">2 giugno</span> a ricordo della nascita della Repubblica.</p>
                    <p>Il 2 e il 3 giugno 1946 si tenne, infatti, il referendum istituzionale indetto a suffragio universale 
                        con il quale gli italiani venivano chiamati alle urne per esprimersi su quale forma di governo, 
                        monarchia o repubblica, dare al Paese, in seguito alla caduta del fascismo. Dopo 85 anni di regno, 
                        con 12.718.641 voti contro 10.718.502 l'Italia diventava repubblica e i monarchi di casa Savoia venivano esiliati.</p>

                    <p>Nel giugno del 1948 per la prima volta in Via dei Fori Imperiali a Roma ospit&ograve;; la parata militare in onore della Repubblica. </p>
                </aside>
            </article>
            <footer>

            </footer>
        </div>
    </body>
</html>
