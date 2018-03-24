.class final Lcom/fiio/music/activity/w;
.super Ljava/lang/Object;
.source "EqActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/EqActivity;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/EqActivity;Landroid/view/View;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/w;->a:Lcom/fiio/music/activity/EqActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/w;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/fiio/music/activity/w;->c:Landroid/app/AlertDialog;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/fiio/music/activity/w;->b:Landroid/view/View;

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/fiio/music/activity/x;

    iget-object v3, p0, Lcom/fiio/music/activity/w;->c:Landroid/app/AlertDialog;

    invoke-direct {v1, p0, v3}, Lcom/fiio/music/activity/x;-><init>(Lcom/fiio/music/activity/w;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/fiio/music/activity/w;->b:Landroid/view/View;

    const v1, 0x7f0b0084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/fiio/music/activity/y;

    iget-object v3, p0, Lcom/fiio/music/activity/w;->c:Landroid/app/AlertDialog;

    invoke-direct {v1, p0, v3}, Lcom/fiio/music/activity/y;-><init>(Lcom/fiio/music/activity/w;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/fiio/music/activity/w;->c:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/fiio/music/activity/w;->b:Landroid/view/View;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 197
    iget-object v0, p0, Lcom/fiio/music/activity/w;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 198
    return-void
.end method
