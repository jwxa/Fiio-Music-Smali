.class Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SatelliteMenu.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Z

.field private b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 599
    new-instance v0, Lcom/fiio/music/satellitemenu/k;

    invoke-direct {v0}, Lcom/fiio/music/satellitemenu/k;-><init>()V

    sput-object v0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 607
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 575
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->a:Z

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->b:F

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->c:I

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->d:I

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->e:I

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->f:Z

    .line 582
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 572
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;)F
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->b:F

    return v0
.end method

.method static synthetic a(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;F)V
    .locals 0

    .prologue
    .line 564
    iput p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->b:F

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;I)V
    .locals 0

    .prologue
    .line 565
    iput p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->c:I

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;Z)V
    .locals 0

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->f:Z

    return-void
.end method

.method static synthetic b(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;)I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->c:I

    return v0
.end method

.method static synthetic b(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;I)V
    .locals 0

    .prologue
    .line 566
    iput p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->d:I

    return-void
.end method

.method static synthetic c(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;)I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->d:I

    return v0
.end method

.method static synthetic c(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;I)V
    .locals 0

    .prologue
    .line 567
    iput p1, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->e:I

    return-void
.end method

.method static synthetic d(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;)I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->e:I

    return v0
.end method

.method static synthetic e(Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;)Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->f:Z

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 593
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    iget-boolean v0, p0, Lcom/fiio/music/satellitemenu/SatelliteMenu$SavedState;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    return-void
.end method
