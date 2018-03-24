.class final Lcom/fiio/music/entity/c;
.super Ljava/lang/Object;
.source "Song.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/fiio/music/entity/Song;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    new-instance v1, Lcom/fiio/music/entity/Song;

    invoke-direct {v1}, Lcom/fiio/music/entity/Song;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$0(Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$1(Lcom/fiio/music/entity/Song;Lcom/fiio/music/entity/Album;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$2(Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Artist;

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$3(Lcom/fiio/music/entity/Song;Lcom/fiio/music/entity/Artist;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$4(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$5(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$6(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$7(Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$8(Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$9(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v2, v0, [Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v0, 0x0

    aget-boolean v0, v2, v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$10(Lcom/fiio/music/entity/Song;Z)V

    const/4 v0, 0x1

    aget-boolean v0, v2, v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$11(Lcom/fiio/music/entity/Song;Z)V

    const/4 v0, 0x2

    aget-boolean v0, v2, v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$12(Lcom/fiio/music/entity/Song;Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$13(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$14(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$15(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$16(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$17(Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$18(Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$19(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SongStyle;

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$20(Lcom/fiio/music/entity/Song;Lcom/fiio/music/entity/SongStyle;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$21(Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$22(Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$23(Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$24(Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$25(Lcom/fiio/music/entity/Song;I)V

    const/4 v0, 0x3

    aget-boolean v0, v2, v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$26(Lcom/fiio/music/entity/Song;Z)V

    const/4 v0, 0x4

    aget-boolean v0, v2, v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$27(Lcom/fiio/music/entity/Song;Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$28(Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$29(Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$30(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$31(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$32(Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$33(Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$34(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/entity/Song;->access$35(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    return-object v1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    new-array v0, p1, [Lcom/fiio/music/entity/Song;

    return-object v0
.end method
