.class public final Lorg/FiioGetMusicInfo/tag/asf/AsfTag;
.super Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;
.source "AsfTag.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$tag$asf$AsfFieldKey:[I

.field public static final COMMON_FIELDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final tagFieldToAsfField:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            "Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final copyFields:Z


# direct methods
.method static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$tag$asf$AsfFieldKey()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$asf$AsfFieldKey:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->values()[Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ACOUSTID_FINGERPRINT:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_62

    :goto_1
    :try_start_1
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ACOUSTID_FINGERPRINT_OLD:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_61

    :goto_2
    :try_start_2
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ACOUSTID_ID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_60

    :goto_3
    :try_start_3
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5f

    :goto_4
    :try_start_4
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ALBUM_ARTIST:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5e

    :goto_5
    :try_start_5
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ALBUM_ARTIST_SORT:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5d

    :goto_6
    :try_start_6
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ALBUM_SORT:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5c

    :goto_7
    :try_start_7
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->AMAZON_ID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5b

    :goto_8
    :try_start_8
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ARRANGER:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x61

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5a

    :goto_9
    :try_start_9
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ARTISTS:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_59

    :goto_a
    :try_start_a
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ARTIST_SORT:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_58

    :goto_b
    :try_start_b
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->AUTHOR:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_57

    :goto_c
    :try_start_c
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->BANNER_IMAGE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_56

    :goto_d
    :try_start_d
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->BANNER_IMAGE_TYPE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_55

    :goto_e
    :try_start_e
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->BANNER_IMAGE_URL:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_54

    :goto_f
    :try_start_f
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->BARCODE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_53

    :goto_10
    :try_start_10
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->BPM:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_52

    :goto_11
    :try_start_11
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->CATALOG_NO:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_51

    :goto_12
    :try_start_12
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->CATEGORY:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_50

    :goto_13
    :try_start_13
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->COMPOSER:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_4f

    :goto_14
    :try_start_14
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->COMPOSER_SORT:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_4e

    :goto_15
    :try_start_15
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->CONDUCTOR:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_4d

    :goto_16
    :try_start_16
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->COPYRIGHT:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_4c

    :goto_17
    :try_start_17
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->COPYRIGHT_URL:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_4b

    :goto_18
    :try_start_18
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->COUNTRY:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x62

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_4a

    :goto_19
    :try_start_19
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_49

    :goto_1a
    :try_start_1a
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->COVER_ART_URL:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_48

    :goto_1b
    :try_start_1b
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->CUSTOM:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x63

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_47

    :goto_1c
    :try_start_1c
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->CUSTOM1:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_46

    :goto_1d
    :try_start_1d
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->CUSTOM2:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_45

    :goto_1e
    :try_start_1e
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->CUSTOM3:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_44

    :goto_1f
    :try_start_1f
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->CUSTOM4:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_43

    :goto_20
    :try_start_20
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->CUSTOM5:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_42

    :goto_21
    :try_start_21
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->DESCRIPTION:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_41

    :goto_22
    :try_start_22
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->DIRECTOR:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_40

    :goto_23
    :try_start_23
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_3f

    :goto_24
    :try_start_24
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->DISC_SUBTITLE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_3e

    :goto_25
    :try_start_25
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_3d

    :goto_26
    :try_start_26
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->DJMIXER:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x5f

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_3c

    :goto_27
    :try_start_27
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ENCODED_BY:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_3b

    :goto_28
    :try_start_28
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ENCODER:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_3a

    :goto_29
    :try_start_29
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ENGINEER:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x5e

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_39

    :goto_2a
    :try_start_2a
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->FBPM:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_38

    :goto_2b
    :try_start_2b
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_37

    :goto_2c
    :try_start_2c
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->GENRE_ID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_36

    :goto_2d
    :try_start_2d
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->GROUPING:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_35

    :goto_2e
    :try_start_2e
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->INITIAL_KEY:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_34

    :goto_2f
    :try_start_2f
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ISRC:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_33

    :goto_30
    :try_start_30
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ISVBR:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_32

    :goto_31
    :try_start_31
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :goto_32
    :try_start_32
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->LANGUAGE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_30

    :goto_33
    :try_start_33
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->LYRICIST:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_2f

    :goto_34
    :try_start_34
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->LYRICS:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_2e

    :goto_35
    :try_start_35
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->LYRICS_SYNCHRONISED:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_2d

    :goto_36
    :try_start_36
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MEDIA:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_2c

    :goto_37
    :try_start_37
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MIXER:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x60

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_2b

    :goto_38
    :try_start_38
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MM_RATING:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_2a

    :goto_39
    :try_start_39
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MOOD:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_29

    :goto_3a
    :try_start_3a
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MUSICBRAINZ_ARTISTID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_28

    :goto_3b
    :try_start_3b
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MUSICBRAINZ_DISC_ID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_27

    :goto_3c
    :try_start_3c
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MUSICBRAINZ_ORIGINAL_RELEASEID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_26

    :goto_3d
    :try_start_3d
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASEARTISTID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_25

    :goto_3e
    :try_start_3e
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASEGROUPID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_24

    :goto_3f
    :try_start_3f
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASEID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_23

    :goto_40
    :try_start_40
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASETRACKID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_22

    :goto_41
    :try_start_41
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASE_COUNTRY:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_21

    :goto_42
    :try_start_42
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASE_STATUS:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_20

    :goto_43
    :try_start_43
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASE_TYPE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_1f

    :goto_44
    :try_start_44
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MUSICBRAINZ_TRACK_ID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_1e

    :goto_45
    :try_start_45
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORKID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_1d

    :goto_46
    :try_start_46
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->MUSICIP_ID:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_1c

    :goto_47
    :try_start_47
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->OCCASION:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_1b

    :goto_48
    :try_start_48
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ORIGINAL_ALBUM:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_1a

    :goto_49
    :try_start_49
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ORIGINAL_ARTIST:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_19

    :goto_4a
    :try_start_4a
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ORIGINAL_LYRICIST:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_18

    :goto_4b
    :try_start_4b
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ORIGINAL_YEAR:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_17

    :goto_4c
    :try_start_4c
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->PRODUCER:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_16

    :goto_4d
    :try_start_4d
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->QUALITY:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_15

    :goto_4e
    :try_start_4e
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->RATING:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_14

    :goto_4f
    :try_start_4f
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->RECORD_LABEL:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_13

    :goto_50
    :try_start_50
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->REMIXER:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_12

    :goto_51
    :try_start_51
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->SCRIPT:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_11

    :goto_52
    :try_start_52
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->SUBTITLE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_10

    :goto_53
    :try_start_53
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->TAGS:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_f

    :goto_54
    :try_start_54
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->TEMPO:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_e

    :goto_55
    :try_start_55
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_d

    :goto_56
    :try_start_56
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->TITLE_SORT:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_c

    :goto_57
    :try_start_57
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_b

    :goto_58
    :try_start_58
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_a

    :goto_59
    :try_start_59
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->URL_DISCOGS_ARTIST_SITE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_9

    :goto_5a
    :try_start_5a
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->URL_DISCOGS_RELEASE_SITE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_8

    :goto_5b
    :try_start_5b
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->URL_LYRICS_SITE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_7

    :goto_5c
    :try_start_5c
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->URL_OFFICIAL_ARTIST_SITE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_6

    :goto_5d
    :try_start_5d
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->URL_OFFICIAL_RELEASE_SITE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5

    :goto_5e
    :try_start_5e
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->URL_PROMOTIONAL_SITE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_4

    :goto_5f
    :try_start_5f
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_3

    :goto_60
    :try_start_60
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_2

    :goto_61
    :try_start_61
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->USER_RATING:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_1

    :goto_62
    :try_start_62
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    const/16 v2, 0x5d

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_0

    :goto_63
    sput-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$asf$AsfFieldKey:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_63

    :catch_1
    move-exception v1

    goto :goto_62

    :catch_2
    move-exception v1

    goto :goto_61

    :catch_3
    move-exception v1

    goto :goto_60

    :catch_4
    move-exception v1

    goto :goto_5f

    :catch_5
    move-exception v1

    goto :goto_5e

    :catch_6
    move-exception v1

    goto :goto_5d

    :catch_7
    move-exception v1

    goto :goto_5c

    :catch_8
    move-exception v1

    goto :goto_5b

    :catch_9
    move-exception v1

    goto :goto_5a

    :catch_a
    move-exception v1

    goto :goto_59

    :catch_b
    move-exception v1

    goto/16 :goto_58

    :catch_c
    move-exception v1

    goto/16 :goto_57

    :catch_d
    move-exception v1

    goto/16 :goto_56

    :catch_e
    move-exception v1

    goto/16 :goto_55

    :catch_f
    move-exception v1

    goto/16 :goto_54

    :catch_10
    move-exception v1

    goto/16 :goto_53

    :catch_11
    move-exception v1

    goto/16 :goto_52

    :catch_12
    move-exception v1

    goto/16 :goto_51

    :catch_13
    move-exception v1

    goto/16 :goto_50

    :catch_14
    move-exception v1

    goto/16 :goto_4f

    :catch_15
    move-exception v1

    goto/16 :goto_4e

    :catch_16
    move-exception v1

    goto/16 :goto_4d

    :catch_17
    move-exception v1

    goto/16 :goto_4c

    :catch_18
    move-exception v1

    goto/16 :goto_4b

    :catch_19
    move-exception v1

    goto/16 :goto_4a

    :catch_1a
    move-exception v1

    goto/16 :goto_49

    :catch_1b
    move-exception v1

    goto/16 :goto_48

    :catch_1c
    move-exception v1

    goto/16 :goto_47

    :catch_1d
    move-exception v1

    goto/16 :goto_46

    :catch_1e
    move-exception v1

    goto/16 :goto_45

    :catch_1f
    move-exception v1

    goto/16 :goto_44

    :catch_20
    move-exception v1

    goto/16 :goto_43

    :catch_21
    move-exception v1

    goto/16 :goto_42

    :catch_22
    move-exception v1

    goto/16 :goto_41

    :catch_23
    move-exception v1

    goto/16 :goto_40

    :catch_24
    move-exception v1

    goto/16 :goto_3f

    :catch_25
    move-exception v1

    goto/16 :goto_3e

    :catch_26
    move-exception v1

    goto/16 :goto_3d

    :catch_27
    move-exception v1

    goto/16 :goto_3c

    :catch_28
    move-exception v1

    goto/16 :goto_3b

    :catch_29
    move-exception v1

    goto/16 :goto_3a

    :catch_2a
    move-exception v1

    goto/16 :goto_39

    :catch_2b
    move-exception v1

    goto/16 :goto_38

    :catch_2c
    move-exception v1

    goto/16 :goto_37

    :catch_2d
    move-exception v1

    goto/16 :goto_36

    :catch_2e
    move-exception v1

    goto/16 :goto_35

    :catch_2f
    move-exception v1

    goto/16 :goto_34

    :catch_30
    move-exception v1

    goto/16 :goto_33

    :catch_31
    move-exception v1

    goto/16 :goto_32

    :catch_32
    move-exception v1

    goto/16 :goto_31

    :catch_33
    move-exception v1

    goto/16 :goto_30

    :catch_34
    move-exception v1

    goto/16 :goto_2f

    :catch_35
    move-exception v1

    goto/16 :goto_2e

    :catch_36
    move-exception v1

    goto/16 :goto_2d

    :catch_37
    move-exception v1

    goto/16 :goto_2c

    :catch_38
    move-exception v1

    goto/16 :goto_2b

    :catch_39
    move-exception v1

    goto/16 :goto_2a

    :catch_3a
    move-exception v1

    goto/16 :goto_29

    :catch_3b
    move-exception v1

    goto/16 :goto_28

    :catch_3c
    move-exception v1

    goto/16 :goto_27

    :catch_3d
    move-exception v1

    goto/16 :goto_26

    :catch_3e
    move-exception v1

    goto/16 :goto_25

    :catch_3f
    move-exception v1

    goto/16 :goto_24

    :catch_40
    move-exception v1

    goto/16 :goto_23

    :catch_41
    move-exception v1

    goto/16 :goto_22

    :catch_42
    move-exception v1

    goto/16 :goto_21

    :catch_43
    move-exception v1

    goto/16 :goto_20

    :catch_44
    move-exception v1

    goto/16 :goto_1f

    :catch_45
    move-exception v1

    goto/16 :goto_1e

    :catch_46
    move-exception v1

    goto/16 :goto_1d

    :catch_47
    move-exception v1

    goto/16 :goto_1c

    :catch_48
    move-exception v1

    goto/16 :goto_1b

    :catch_49
    move-exception v1

    goto/16 :goto_1a

    :catch_4a
    move-exception v1

    goto/16 :goto_19

    :catch_4b
    move-exception v1

    goto/16 :goto_18

    :catch_4c
    move-exception v1

    goto/16 :goto_17

    :catch_4d
    move-exception v1

    goto/16 :goto_16

    :catch_4e
    move-exception v1

    goto/16 :goto_15

    :catch_4f
    move-exception v1

    goto/16 :goto_14

    :catch_50
    move-exception v1

    goto/16 :goto_13

    :catch_51
    move-exception v1

    goto/16 :goto_12

    :catch_52
    move-exception v1

    goto/16 :goto_11

    :catch_53
    move-exception v1

    goto/16 :goto_10

    :catch_54
    move-exception v1

    goto/16 :goto_f

    :catch_55
    move-exception v1

    goto/16 :goto_e

    :catch_56
    move-exception v1

    goto/16 :goto_d

    :catch_57
    move-exception v1

    goto/16 :goto_c

    :catch_58
    move-exception v1

    goto/16 :goto_b

    :catch_59
    move-exception v1

    goto/16 :goto_a

    :catch_5a
    move-exception v1

    goto/16 :goto_9

    :catch_5b
    move-exception v1

    goto/16 :goto_8

    :catch_5c
    move-exception v1

    goto/16 :goto_7

    :catch_5d
    move-exception v1

    goto/16 :goto_6

    :catch_5e
    move-exception v1

    goto/16 :goto_5

    :catch_5f
    move-exception v1

    goto/16 :goto_4

    :catch_60
    move-exception v1

    goto/16 :goto_3

    :catch_61
    move-exception v1

    goto/16 :goto_2

    :catch_62
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 89
    sput-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->AUTHOR:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 176
    sput-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->AUTHOR:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->DESCRIPTION:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;-><init>(Z)V

    .line 196
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/Tag;Z)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p2}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;-><init>(Z)V

    .line 220
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->copyFrom(Lorg/FiioGetMusicInfo/tag/Tag;)V

    .line 221
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;-><init>()V

    .line 206
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->copyFields:Z

    .line 207
    return-void
.end method

.method private copyFrom(Lorg/FiioGetMusicInfo/tag/TagField;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 4

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->isCopyingFields()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    instance-of v1, p1, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;

    if-eqz v1, :cond_0

    .line 302
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/TagField;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-object v1

    .line 306
    :catch_0
    move-exception v1

    new-instance v1, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;

    check-cast p1, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->getDescriptor()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    goto :goto_0

    .line 309
    :cond_0
    instance-of v1, p1, Lorg/FiioGetMusicInfo/tag/TagTextField;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 311
    check-cast v1, Lorg/FiioGetMusicInfo/tag/TagTextField;

    invoke-interface {v1}, Lorg/FiioGetMusicInfo/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 312
    new-instance v1, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Asf Tag Field class:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, p1

    .line 329
    goto :goto_0
.end method

.method private copyFrom(Lorg/FiioGetMusicInfo/tag/Tag;)V
    .locals 2

    .prologue
    .line 270
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/Tag;->getFields()Ljava/util/Iterator;

    move-result-object v1

    .line 272
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    return-void

    .line 274
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->copyFrom(Lorg/FiioGetMusicInfo/tag/TagField;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    .line 277
    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto :goto_0
.end method

.method private isValidField(Lorg/FiioGetMusicInfo/tag/TagField;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 649
    if-nez p1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return v0

    .line 654
    :cond_1
    instance-of v1, p1, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;

    if-eqz v1, :cond_0

    .line 659
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final addCopyright(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->createCopyrightField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 251
    return-void
.end method

.method public final addField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->isValidField(Lorg/FiioGetMusicInfo/tag/TagField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->isMultiValued(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->copyFrom(Lorg/FiioGetMusicInfo/tag/TagField;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->copyFrom(Lorg/FiioGetMusicInfo/tag/TagField;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto :goto_0
.end method

.method public final addRating(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->createRatingField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 261
    return-void
.end method

.method public final createArtworkField([B)Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 355
    new-instance v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p1, v1, v2, v2}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;-><init>([BILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final createCompilationField(Z)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 719
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;

    move-result-object v0

    return-object v0
.end method

.method public final createCopyrightField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;
    .locals 2

    .prologue
    .line 366
    new-instance v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->COPYRIGHT:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-direct {v0, v1, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;-><init>(Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;

    move-result-object v0

    return-object v0
.end method

.method public final createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;
    .locals 5

    .prologue
    .line 343
    new-instance v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getBinaryData()[B

    move-result-object v1

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getPictureType()I

    move-result v2

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;-><init>([BILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;
    .locals 2

    .prologue
    .line 416
    if-nez p2, :cond_0

    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    if-nez p1, :cond_1

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    .line 425
    if-nez v0, :cond_2

    .line 427
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_2
    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->createField(Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;

    move-result-object v0

    return-object v0
.end method

.method public final createField(Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;
    .locals 2

    .prologue
    .line 391
    if-nez p2, :cond_0

    .line 393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    if-nez p1, :cond_1

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_1
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->$SWITCH_TABLE$org$FiioGetMusicInfo$tag$asf$AsfFieldKey()[I

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 406
    new-instance v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 402
    :sswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cover Art cannot be created using this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :sswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Banner Image cannot be created using this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public final createRatingField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;
    .locals 2

    .prologue
    .line 377
    new-instance v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->RATING:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-direct {v0, v1, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;-><init>(Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;Ljava/lang/String;)V

    return-object v0
.end method

.method public final deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V
    .locals 1

    .prologue
    .line 448
    if-nez p1, :cond_0

    .line 450
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 452
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public final deleteField(Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;)V
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public final getAll(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    .line 477
    if-nez v0, :cond_0

    .line 479
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 481
    :cond_0
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getArtworkList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 490
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    return-object v1

    .line 492
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 494
    check-cast v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;

    .line 495
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/images/ArtworkFactory;->getNew()Lorg/FiioGetMusicInfo/tag/images/Artwork;

    move-result-object v3

    .line 496
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->getRawImageData()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setBinaryData([B)V

    .line 497
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setDescription(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->getPictureType()I

    move-result v0

    invoke-interface {v3, v0}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setPictureType(I)V

    .line 500
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final getAsfFields()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->isCopyingFields()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Since the field conversion is not enabled, this method cannot be executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/asf/b;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->getFields()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/asf/b;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final getCopyright()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->COPYRIGHT:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 462
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 464
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFirst(Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    if-nez p1, :cond_0

    .line 551
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 553
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFirstCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->COPYRIGHT:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;

    move-result-object v0

    return-object v0
.end method

.method public final getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;
    .locals 1

    .prologue
    .line 584
    if-nez p1, :cond_0

    .line 586
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 588
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;

    return-object v0
.end method

.method public final getFirstRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->RATING:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRating()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->RATING:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    if-nez p1, :cond_0

    .line 563
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 565
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Z
    .locals 1

    .prologue
    .line 703
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    .line 704
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasField(Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;)Z
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isAllowedEncoding(Ljava/nio/charset/Charset;)Z
    .locals 1

    .prologue
    .line 618
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isCopyingFields()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->copyFields:Z

    return v0
.end method

.method public final setCopyright(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->createCopyrightField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 684
    return-void
.end method

.method public final setField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 1

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->isValidField(Lorg/FiioGetMusicInfo/tag/TagField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->copyFrom(Lorg/FiioGetMusicInfo/tag/TagField;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 674
    :cond_0
    return-void
.end method

.method public final setRating(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 693
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->createRatingField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 694
    return-void
.end method
