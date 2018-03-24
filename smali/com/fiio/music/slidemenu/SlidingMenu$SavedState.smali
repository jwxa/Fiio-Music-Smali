.class public Lcom/fiio/music/slidemenu/SlidingMenu$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SlidingMenu.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fiio/music/slidemenu/SlidingMenu$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 940
    new-instance v0, Lcom/fiio/music/slidemenu/l;

    invoke-direct {v0}, Lcom/fiio/music/slidemenu/l;-><init>()V

    .line 939
    sput-object v0, Lcom/fiio/music/slidemenu/SlidingMenu$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 948
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 923
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 924
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu$SavedState;->a:I

    .line 925
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lcom/fiio/music/slidemenu/SlidingMenu$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    .prologue
    .line 918
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 919
    iput p2, p0, Lcom/fiio/music/slidemenu/SlidingMenu$SavedState;->a:I

    .line 920
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 928
    iget v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu$SavedState;->a:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 935
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 936
    iget v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    return-void
.end method
