.class public abstract Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;
.super Lcom/fiio/music/util/dslv/DragSortCursorAdapter;
.source "ResourceDragSortCursorAdapter.java"


# instance fields
.field private mDropDownLayout:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p3}, Lcom/fiio/music/util/dslv/DragSortCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 58
    iput p2, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mLayout:I

    .line 59
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1, p3, p4}, Lcom/fiio/music/util/dslv/DragSortCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 97
    iput p2, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mLayout:I

    .line 98
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p3, p4}, Lcom/fiio/music/util/dslv/DragSortCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 80
    iput p2, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mLayout:I

    .line 81
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mDropDownLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mDropDownLayout:I

    .line 133
    return-void
.end method

.method public setViewResource(I)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->mLayout:I

    .line 124
    return-void
.end method
