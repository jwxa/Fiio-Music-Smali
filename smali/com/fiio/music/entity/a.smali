.class final Lcom/fiio/music/entity/a;
.super Ljava/lang/Object;
.source "FileItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/fiio/music/entity/FileItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/fiio/music/entity/FileItem;

    invoke-direct {v0}, Lcom/fiio/music/entity/FileItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/entity/FileItem;->access$0(Lcom/fiio/music/entity/FileItem;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/entity/FileItem;->access$1(Lcom/fiio/music/entity/FileItem;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v2, 0x0

    aget-boolean v2, v1, v2

    invoke-static {v0, v2}, Lcom/fiio/music/entity/FileItem;->access$2(Lcom/fiio/music/entity/FileItem;Z)V

    const/4 v2, 0x1

    aget-boolean v2, v1, v2

    invoke-static {v0, v2}, Lcom/fiio/music/entity/FileItem;->access$3(Lcom/fiio/music/entity/FileItem;Z)V

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    invoke-static {v0, v1}, Lcom/fiio/music/entity/FileItem;->access$4(Lcom/fiio/music/entity/FileItem;Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/entity/FileItem;->access$5(Lcom/fiio/music/entity/FileItem;I)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    new-array v0, p1, [Lcom/fiio/music/entity/FileItem;

    return-object v0
.end method
