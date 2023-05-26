/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package nationalteamplayer;

/**
 *
 * @author fahru
 */
public class Player {
    private int playerId;
    private int nationalTeamId;
    private String foto;
    private String nama;
    private int nomorPunggung;
    private String posisi;

    public Player(int playerId, int nationalTeamId, String foto, String nama, int nomorPunggung, String posisi) {
        this.playerId = playerId;
        this.nationalTeamId = nationalTeamId;
        this.foto = foto;
        this.nama = nama;
        this.nomorPunggung = nomorPunggung;
        this.posisi = posisi;
    }

    public int getPlayerId() {
        return playerId;
    }

    public void setPlayerId(int playerId) {
        this.playerId = playerId;
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

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public int getNomorPunggung() {
        return nomorPunggung;
    }

    public void setNomorPunggung(int nomorPunggung) {
        this.nomorPunggung = nomorPunggung;
    }

    public String getPosisi() {
        return posisi;
    }

    public void setPosisi(String posisi) {
        this.posisi = posisi;
    }
}
