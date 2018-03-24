.class public Lcom/fiio/music/network/bean/AddressData;
.super Ljava/lang/Object;
.source "AddressData.java"


# instance fields
.field private area:Ljava/lang/String;

.field private area_id:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private city_id:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private country_id:Ljava/lang/String;

.field private county:Ljava/lang/String;

.field private county_id:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private isp:Ljava/lang/String;

.field private isp_id:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private region_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressData;->country:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/fiio/music/network/bean/AddressData;->country_id:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/fiio/music/network/bean/AddressData;->area:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/fiio/music/network/bean/AddressData;->area_id:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/fiio/music/network/bean/AddressData;->region:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/fiio/music/network/bean/AddressData;->region_id:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcom/fiio/music/network/bean/AddressData;->city:Ljava/lang/String;

    .line 51
    iput-object p8, p0, Lcom/fiio/music/network/bean/AddressData;->city_id:Ljava/lang/String;

    .line 52
    iput-object p9, p0, Lcom/fiio/music/network/bean/AddressData;->county:Ljava/lang/String;

    .line 53
    iput-object p10, p0, Lcom/fiio/music/network/bean/AddressData;->county_id:Ljava/lang/String;

    .line 54
    iput-object p11, p0, Lcom/fiio/music/network/bean/AddressData;->isp:Ljava/lang/String;

    .line 55
    iput-object p12, p0, Lcom/fiio/music/network/bean/AddressData;->isp_id:Ljava/lang/String;

    .line 56
    iput-object p13, p0, Lcom/fiio/music/network/bean/AddressData;->ip:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fiio/music/network/bean/AddressData;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getArea_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fiio/music/network/bean/AddressData;->area_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fiio/music/network/bean/AddressData;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fiio/music/network/bean/AddressData;->city_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fiio/music/network/bean/AddressData;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fiio/music/network/bean/AddressData;->country_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCounty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fiio/music/network/bean/AddressData;->county:Ljava/lang/String;

    return-object v0
.end method

.method public getCounty_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fiio/music/network/bean/AddressData;->county_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fiio/music/network/bean/AddressData;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getIsp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/fiio/music/network/bean/AddressData;->isp:Ljava/lang/String;

    return-object v0
.end method

.method public getIsp_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fiio/music/network/bean/AddressData;->isp_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fiio/music/network/bean/AddressData;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fiio/music/network/bean/AddressData;->region_id:Ljava/lang/String;

    return-object v0
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressData;->area:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setArea_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressData;->area_id:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressData;->city:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setCity_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressData;->city_id:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressData;->country:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setCountry_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressData;->country_id:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setCounty(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressData;->county:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setCounty_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressData;->county_id:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressData;->ip:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setIsp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressData;->isp:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setIsp_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressData;->isp_id:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressData;->region:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setRegion_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressData;->region_id:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "country :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/network/bean/AddressData;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncountry_id :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/AddressData;->country_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    const-string v1, "\narea :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/AddressData;->area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\narea_id :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/AddressData;->area_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nregion :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/fiio/music/network/bean/AddressData;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nregion_id :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/AddressData;->region_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncity :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/fiio/music/network/bean/AddressData;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncity_id :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/AddressData;->city_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncounty :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/fiio/music/network/bean/AddressData;->county:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncounty_id :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/AddressData;->county_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nisp :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/fiio/music/network/bean/AddressData;->isp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nisp_id :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/AddressData;->isp_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nip :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/fiio/music/network/bean/AddressData;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
