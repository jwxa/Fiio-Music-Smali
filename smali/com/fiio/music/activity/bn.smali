.class final Lcom/fiio/music/activity/bn;
.super Ljava/lang/Object;
.source "ListMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;

.field private final synthetic b:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/bn;->a:Lcom/fiio/music/activity/ListMainActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/bn;->b:Lcom/fiio/music/custom/f;

    .line 2997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/fiio/music/activity/bn;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-string v1, "FiioMusic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/activity/ListMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3003
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3004
    const-string v1, "updateignore"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3005
    const-string v1, "versionname"

    iget-object v2, p0, Lcom/fiio/music/activity/bn;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/util/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3006
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3007
    iget-object v0, p0, Lcom/fiio/music/activity/bn;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 3009
    return-void
.end method
