.class final Lcom/fiio/music/fragment/al;
.super Ljava/lang/Object;
.source "SettingMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/SettingMenuFragment;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/al;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iput-object p2, p0, Lcom/fiio/music/fragment/al;->b:Landroid/app/AlertDialog;

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/fiio/music/fragment/al;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 936
    return-void
.end method
