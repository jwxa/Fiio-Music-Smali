.class final Lcom/fiio/music/util/dslv/c;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcom/fiio/music/util/dslv/h;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/dslv/c;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/fiio/music/util/dslv/c;->a:Lcom/fiio/music/util/dslv/DragSortListView;

    invoke-static {v0}, Lcom/fiio/music/util/dslv/DragSortListView;->a(Lcom/fiio/music/util/dslv/DragSortListView;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method
