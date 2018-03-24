.class public Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;
.super Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;
.source "SimpleDragSortCursorAdapter.java"


# instance fields
.field private mCursorToStringConverter:Lcom/fiio/music/util/dslv/t;

.field protected mFrom:[I

.field mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I

.field private mViewBinder:Lcom/fiio/music/util/dslv/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 88
    iput-object p5, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 89
    iput-object p4, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 90
    invoke-direct {p0, p3, p4}, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 114
    iput-object p5, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 115
    iput-object p4, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 116
    invoke-direct {p0, p3, p4}, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 336
    if-eqz p1, :cond_3

    .line 338
    array-length v1, p2

    .line 339
    iget-object v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    array-length v0, v0

    if-eq v0, v1, :cond_1

    .line 340
    :cond_0
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    .line 342
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_2

    .line 348
    :goto_1
    return-void

    .line 343
    :cond_2
    iget-object v2, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    aget-object v3, p2, v0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v4, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/fiio/music/util/dslv/u;

    .line 146
    iget-object v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    array-length v5, v0

    .line 147
    iget-object v6, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    .line 148
    iget-object v7, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    move v3, v2

    .line 150
    :goto_0
    if-lt v3, v5, :cond_0

    .line 176
    return-void

    .line 151
    :cond_0
    aget v0, v7, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_2

    .line 154
    if-eqz v4, :cond_5

    .line 155
    invoke-interface {v4}, Lcom/fiio/music/util/dslv/u;->a()Z

    move-result v1

    .line 158
    :goto_1
    if-nez v1, :cond_2

    .line 160
    aget v1, v6, v3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    if-nez v1, :cond_1

    .line 163
    const-string v1, ""

    .line 165
    :cond_1
    instance-of v8, v0, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 166
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 150
    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 167
    :cond_3
    instance-of v8, v0, Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    .line 168
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 170
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " is not a  view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 371
    iput-object p2, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 372
    iput-object p3, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 376
    iget-object v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 377
    invoke-super {p0, p1}, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 378
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/fiio/music/util/dslv/t;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/fiio/music/util/dslv/t;

    invoke-interface {v0}, Lcom/fiio/music/util/dslv/t;->a()Ljava/lang/CharSequence;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    .line 321
    :cond_0
    iget v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    if-ltz v0, :cond_1

    .line 322
    iget v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_1
    invoke-super {p0, p1}, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getCursorToStringConverter()Lcom/fiio/music/util/dslv/t;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/fiio/music/util/dslv/t;

    return-object v0
.end method

.method public getStringConversionColumn()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    return v0
.end method

.method public getViewBinder()Lcom/fiio/music/util/dslv/u;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/fiio/music/util/dslv/u;

    return-object v0
.end method

.method public setCursorToStringConverter(Lcom/fiio/music/util/dslv/t;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/fiio/music/util/dslv/t;

    .line 304
    return-void
.end method

.method public setStringConversionColumn(I)V
    .locals 0

    .prologue
    .line 271
    iput p1, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 272
    return-void
.end method

.method public setViewBinder(Lcom/fiio/music/util/dslv/u;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/fiio/music/util/dslv/u;

    .line 201
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/util/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 356
    invoke-super {p0, p1}, Lcom/fiio/music/util/dslv/ResourceDragSortCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
