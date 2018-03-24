.class final Lcom/audlabs/vipereffect/main/d;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/main/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/main/d;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/d;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainActivity;->access$0(Lcom/audlabs/vipereffect/main/MainActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/d;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    const-string v1, "kuishe"

    invoke-virtual {v0, v1, v3}, Lcom/audlabs/vipereffect/main/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    const-string v1, "enable_viper"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/d;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    new-instance v1, Lcom/fiio/music/service/h;

    .line 118
    iget-object v2, p0, Lcom/audlabs/vipereffect/main/d;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-direct {v1, v2}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    .line 117
    invoke-static {v0, v1}, Lcom/audlabs/vipereffect/main/MainActivity;->access$1(Lcom/audlabs/vipereffect/main/MainActivity;Lcom/fiio/music/service/h;)V

    .line 119
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/d;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainActivity;->access$2(Lcom/audlabs/vipereffect/main/MainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->b()V

    .line 120
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/d;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainActivity;->access$2(Lcom/audlabs/vipereffect/main/MainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->S()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->X()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setFlag_viper(Z)V

    .line 135
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/d;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/audlabs/vipereffect/ViPEREffect;->setEffectEnable(Landroid/content/Context;Z)V

    .line 164
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/d;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    const-string v1, "kuishe"

    .line 139
    iget-object v2, p0, Lcom/audlabs/vipereffect/main/d;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-virtual {v2}, Lcom/audlabs/vipereffect/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    .line 138
    invoke-virtual {v0, v1, v3}, Lcom/audlabs/vipereffect/main/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    const-string v1, "enable_viper"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    new-instance v0, Lcom/fiio/music/service/h;

    .line 156
    iget-object v1, p0, Lcom/audlabs/vipereffect/main/d;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    .line 155
    invoke-direct {v0, v1}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    .line 157
    invoke-virtual {v0}, Lcom/fiio/music/service/h;->b()V

    .line 158
    invoke-virtual {v0}, Lcom/fiio/music/service/h;->S()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->X()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setFlag_viper(Z)V

    .line 161
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/d;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/audlabs/vipereffect/ViPEREffect;->setEffectEnable(Landroid/content/Context;Z)V

    goto :goto_0
.end method
