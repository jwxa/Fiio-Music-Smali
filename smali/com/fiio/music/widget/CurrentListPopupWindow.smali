.class public Lcom/fiio/music/widget/CurrentListPopupWindow;
.super Landroid/view/ViewGroup;
.source "CurrentListPopupWindow.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Lcom/fiio/music/service/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcom/fiio/music/widget/CurrentListPopupWindow;->b:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object p1, p0, Lcom/fiio/music/widget/CurrentListPopupWindow;->b:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-object p1, p0, Lcom/fiio/music/widget/CurrentListPopupWindow;->b:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/fiio/music/service/h;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/fiio/music/widget/CurrentListPopupWindow;->b:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/fiio/music/widget/CurrentListPopupWindow;->a:Landroid/view/View;

    .line 47
    iput-object p3, p0, Lcom/fiio/music/widget/CurrentListPopupWindow;->c:Lcom/fiio/music/service/h;

    .line 48
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method
