/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package nationalteamplayer;

/**
 *
 * @author fahru
 */
public class NationalTeam {
    private int nationalTeamId;
    private String foto;
    private String negara;
    private String julukan;
    private String coach;
    
    public NationalTeam(){}

    public NationalTeam(int nationalTeamId, String foto, String negara, String julukan, String coach) {
        this.nationalTeamId = nationalTeamId;
        this.foto = foto;
        this.negara = negara;
        this.julukan = julukan;
        this.coach = coach;
    }

    public int getNationalTeamId() {
        return nationalTeamId;
    }

    public void setNationalTeamId(int nationalTeamId) {
        this.nationalTeamId = nationalTeamId;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getNegara() {
        return negara;
    }

    public void setNegara(String negara) {
        this.negara = negara;
    }

    public String getJulukan() {
        return julukan;
    }

    public void setJulukan(String julukan) {
        this.julukan = julukan;
    }

    public String getCoach() {
        return coach;
    }

    public void setCoach(String coach) {
        this.coach = coach;
    }
}
