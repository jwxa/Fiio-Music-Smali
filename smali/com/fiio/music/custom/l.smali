.class final Lcom/fiio/music/custom/l;
.super Ljava/lang/Object;
.source "XfMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/custom/j;

.field private final synthetic b:Lcom/fiio/music/adapter/MenuAdapter$ItemListener;


# direct methods
.method constructor <init>(Lcom/fiio/music/custom/j;Lcom/fiio/music/adapter/MenuAdapter$ItemListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/custom/l;->a:Lcom/fiio/music/custom/j;

    iput-object p2, p0, Lcom/fiio/music/custom/l;->b:Lcom/fiio/music/adapter/MenuAdapter$ItemListener;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fiio/music/custom/l;->b:Lcom/fiio/music/adapter/MenuAdapter$ItemListener;

    invoke-interface {v0, p3, p2}, Lcom/fiio/music/adapter/MenuAdapter$ItemListener;->onClickListener(ILandroid/view/View;)V

    .line 100
    return-void
.end method
