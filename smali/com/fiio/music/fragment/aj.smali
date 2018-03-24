.class final Lcom/fiio/music/fragment/aj;
.super Lcom/fiio/music/network/b/g;
.source "SettingMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fiio/music/network/b/g",
        "<",
        "Lcom/fiio/music/entity/Vipper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/SettingMenuFragment;

.field private final synthetic c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/aj;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iput-object p2, p0, Lcom/fiio/music/fragment/aj;->c:Landroid/content/SharedPreferences$Editor;

    .line 1878
    invoke-direct {p0}, Lcom/fiio/music/network/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;I)V
    .locals 3

    .prologue
    .line 1883
    invoke-static {}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$64()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendVipperUser onError code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1
    check-cast p1, Lcom/fiio/music/entity/Vipper;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$64()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendVipperUser onResponse response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$64()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Vipper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/fiio/music/entity/Vipper;->isFlag()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$64()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendVipperUser onResponse insert data fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/fiio/music/entity/Vipper;->isFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$64()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendVipperUser onResponse request success!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/fragment/aj;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "issend"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/fiio/music/fragment/aj;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
