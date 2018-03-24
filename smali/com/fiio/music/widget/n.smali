.class final Lcom/fiio/music/widget/n;
.super Ljava/lang/Object;
.source "SmootheListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/widget/m;

.field private final synthetic b:Landroid/widget/AbsListView;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/fiio/music/widget/m;Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/widget/n;->a:Lcom/fiio/music/widget/m;

    iput-object p2, p0, Lcom/fiio/music/widget/n;->b:Landroid/widget/AbsListView;

    iput p3, p0, Lcom/fiio/music/widget/n;->c:I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fiio/music/widget/n;->b:Landroid/widget/AbsListView;

    iget v1, p0, Lcom/fiio/music/widget/n;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 46
    return-void
.end method
