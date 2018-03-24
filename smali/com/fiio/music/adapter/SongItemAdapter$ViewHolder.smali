.class public Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SongItemAdapter.java"


# instance fields
.field public current_play_image_view:Landroid/widget/ImageView;

.field public listview_item_image:Landroid/widget/ImageView;

.field public mCheckBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/fiio/music/adapter/SongItemAdapter;

.field public tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

.field public tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;


# direct methods
.method public constructor <init>(Lcom/fiio/music/adapter/SongItemAdapter;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->this$0:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
