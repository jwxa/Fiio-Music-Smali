.class public final Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
.super Ljava/lang/Object;
.source "GUID.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final GUID_AUDIOSTREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_AUDIO_ERROR_CONCEALEMENT_ABSENT:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_CONTENTDESCRIPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_CONTENT_BRANDING:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_CONTENT_ENCRYPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_ENCODING:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_EXTENDED_CONTENT_DESCRIPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_FILE:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_HEADER:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_HEADER_EXTENSION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_LANGUAGE_LIST:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_LENGTH:I = 0x10

.field public static final GUID_METADATA:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_METADATA_LIBRARY:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field private static final GUID_PATTERN:Ljava/util/regex/Pattern;

.field public static final GUID_STREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_STREAM_BITRATE_PROPERTIES:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field private static final GUID_TO_CONFIGURED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/data/GUID;",
            "Lorg/FiioGetMusicInfo/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation
.end field

.field public static final GUID_UNSPECIFIED:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final GUID_VIDEOSTREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final KNOWN_GUIDS:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field public static final SCRIPT_COMMAND_OBJECT:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;


# instance fields
.field private description:Ljava/lang/String;

.field private guidData:[I

.field private hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x7

    const/4 v1, 0x0

    const/16 v6, 0x10

    const/4 v5, 0x3

    .line 34
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->$assertionsDisabled:Z

    .line 40
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 41
    new-array v2, v6, [I

    const/16 v3, 0x40

    aput v3, v2, v1

    const/4 v3, 0x1

    const/16 v4, 0xa4

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xf1

    aput v4, v2, v3

    const/16 v3, 0x49

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0xce

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x4e

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xd0

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0xa3

    aput v4, v2, v3

    const/16 v3, 0x9

    .line 42
    const/16 v4, 0xac

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xa0

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xc9

    aput v4, v2, v3

    const/16 v3, 0xd

    aput v5, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x48

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0xf6

    aput v4, v2, v3

    .line 43
    const-string v3, "Audio error concealment absent."

    .line 40
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_ABSENT:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 50
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 51
    new-array v2, v6, [I

    const/16 v3, 0x40

    aput v3, v2, v1

    const/4 v3, 0x1

    const/16 v4, 0xa4

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xf1

    aput v4, v2, v3

    const/16 v3, 0x49

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0xce

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x4e

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xd0

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0xa3

    aput v4, v2, v3

    const/16 v3, 0x9

    .line 52
    const/16 v4, 0xac

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xa0

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xc9

    aput v4, v2, v3

    const/16 v3, 0xd

    aput v5, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x48

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0xf6

    aput v4, v2, v3

    .line 53
    const-string v3, "Interleaved audio error concealment."

    .line 50
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 58
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    const/16 v3, 0x40

    aput v3, v2, v1

    const/4 v3, 0x1

    .line 59
    const/16 v4, 0x9e

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x69

    aput v4, v2, v3

    const/16 v3, 0xf8

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0x4d

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x5b

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xcf

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0xa8

    aput v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0xfd

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x80

    aput v4, v2, v3

    const/16 v3, 0xc

    .line 60
    const/16 v4, 0x5f

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x5c

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x44

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x2b

    aput v4, v2, v3

    const-string v3, " Audio stream"

    .line 58
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 65
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    const/16 v3, 0xfa

    aput v3, v2, v1

    const/4 v3, 0x1

    .line 66
    const/16 v4, 0xb3

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v8, v2, v3

    const/16 v3, 0x22

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0x23

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0xbd

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xd2

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0xb4

    aput v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0xb7

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xa0

    aput v4, v2, v3

    const/16 v3, 0xc

    .line 67
    const/16 v4, 0xc9

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x55

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0xfc

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x6e

    aput v4, v2, v3

    const-string v3, "Content Branding"

    .line 65
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_CONTENT_BRANDING:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 73
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    .line 74
    const/16 v3, 0xfb

    aput v3, v2, v1

    const/4 v3, 0x1

    const/16 v4, 0xb3

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v8, v2, v3

    const/16 v3, 0x22

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0x23

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0xbd

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xd2

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0xb4

    aput v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0xb7

    aput v4, v2, v3

    const/16 v3, 0xb

    .line 75
    const/16 v4, 0xa0

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xc9

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x55

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0xfc

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x6e

    aput v4, v2, v3

    const-string v3, "Content Encryption Object"

    .line 73
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 81
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    .line 82
    const/16 v3, 0x33

    aput v3, v2, v1

    const/4 v3, 0x1

    const/16 v4, 0x26

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xb2

    aput v4, v2, v3

    const/16 v3, 0x75

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0x8e

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x66

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xcf

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0xa6

    aput v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0xd9

    aput v4, v2, v3

    const/16 v3, 0xb

    .line 83
    const/16 v4, 0xaa

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x62

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0xce

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x6c

    aput v4, v2, v3

    const-string v3, "Content Description"

    .line 81
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 88
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    const/16 v3, 0x40

    aput v3, v2, v1

    const/4 v3, 0x1

    const/16 v4, 0x52

    aput v4, v2, v3

    const/4 v3, 0x2

    .line 89
    const/16 v4, 0xd1

    aput v4, v2, v3

    const/16 v3, 0x86

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0x1d

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x31

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xd0

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0xa3

    aput v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0xa4

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xa0

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xc9

    aput v4, v2, v3

    const/16 v3, 0xd

    .line 90
    aput v5, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x48

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0xf6

    aput v4, v2, v3

    const-string v3, "Encoding description"

    .line 88
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_ENCODING:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 96
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 97
    new-array v2, v6, [I

    const/16 v3, 0x40

    aput v3, v2, v1

    const/4 v3, 0x1

    const/16 v4, 0xa4

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xd0

    aput v4, v2, v3

    const/16 v3, 0xd2

    aput v3, v2, v5

    const/4 v3, 0x4

    aput v7, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0xe3

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xd2

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0x97

    aput v4, v2, v3

    const/16 v3, 0x9

    .line 98
    const/16 v4, 0xf0

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xa0

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xc9

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x5e

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0xa8

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x50

    aput v4, v2, v3

    .line 99
    const-string v3, "Extended Content Description"

    .line 96
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 104
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    const/16 v3, 0xa1

    aput v3, v2, v1

    const/4 v3, 0x1

    const/16 v4, 0xdc

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xab

    aput v4, v2, v3

    .line 105
    const/16 v3, 0x8c

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0xa9

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xcf

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0x8e

    aput v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0xe4

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xc0

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xc

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x20

    aput v4, v2, v3

    const/16 v3, 0xe

    .line 106
    const/16 v4, 0x53

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x65

    aput v4, v2, v3

    const-string v3, "File header"

    .line 104
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_FILE:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 111
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    const/16 v3, 0x30

    aput v3, v2, v1

    const/4 v3, 0x1

    const/16 v4, 0x26

    aput v4, v2, v3

    const/4 v3, 0x2

    .line 112
    const/16 v4, 0xb2

    aput v4, v2, v3

    const/16 v3, 0x75

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0x8e

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x66

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xcf

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0xa6

    aput v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0xd9

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xaa

    aput v4, v2, v3

    const/16 v3, 0xd

    .line 113
    const/16 v4, 0x62

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0xce

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x6c

    aput v4, v2, v3

    const-string v3, "Asf header"

    .line 111
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_HEADER:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 118
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    const/16 v3, 0xb5

    aput v3, v2, v1

    const/4 v3, 0x1

    .line 119
    aput v5, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xbf

    aput v4, v2, v3

    const/16 v3, 0x5f

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0x2e

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0xa9

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xcf

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0x8e

    aput v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0xe3

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xc0

    aput v4, v2, v3

    const/16 v3, 0xc

    .line 120
    const/16 v4, 0xc

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x20

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x53

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x65

    aput v4, v2, v3

    const-string v3, "Header Extension"

    .line 118
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 125
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    .line 127
    const-string v3, "Language List"

    .line 125
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 137
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    fill-array-data v2, :array_1

    .line 139
    const-string v3, "Metadata"

    .line 137
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_METADATA:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 144
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    fill-array-data v2, :array_2

    .line 146
    const-string v3, "Metadata Library"

    .line 144
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_METADATA_LIBRARY:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 153
    const-string v0, "[a-f0-9]{8}\\-[a-f0-9]{4}\\-[a-f0-9]{4}\\-[a-f0-9]{4}\\-[a-f0-9]{12}"

    .line 154
    const/4 v2, 0x2

    .line 152
    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 151
    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_PATTERN:Ljava/util/regex/Pattern;

    .line 159
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    const/16 v3, 0x91

    aput v3, v2, v1

    const/4 v3, 0x1

    aput v7, v2, v3

    const/4 v3, 0x2

    .line 160
    const/16 v4, 0xdc

    aput v4, v2, v3

    const/16 v3, 0xb7

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0xb7

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0xa9

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xcf

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0x8e

    aput v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0xe6

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xc0

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xc

    aput v4, v2, v3

    const/16 v3, 0xd

    .line 161
    const/16 v4, 0x20

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x53

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x65

    aput v4, v2, v3

    const-string v3, "Stream"

    .line 159
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_STREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 167
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 168
    new-array v2, v6, [I

    const/16 v3, 0xce

    aput v3, v2, v1

    const/4 v3, 0x1

    const/16 v4, 0x75

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xf8

    aput v4, v2, v3

    const/16 v3, 0x7b

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0x8d

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x46

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xd1

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0x8d

    aput v4, v2, v3

    const/16 v3, 0x9

    .line 169
    const/16 v4, 0x82

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x60

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0x97

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0xc9

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0xa2

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0xb2

    aput v4, v2, v3

    .line 170
    const-string v3, "Stream bitrate properties"

    .line 167
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 185
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    .line 187
    const-string v3, "Unspecified"

    .line 185
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_UNSPECIFIED:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 192
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    const/16 v3, 0xc0

    aput v3, v2, v1

    const/4 v3, 0x1

    .line 193
    const/16 v4, 0xef

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x19

    aput v4, v2, v3

    const/16 v3, 0xbc

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0x4d

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x5b

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xcf

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0xa8

    aput v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0xfd

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x80

    aput v4, v2, v3

    const/16 v3, 0xc

    .line 194
    const/16 v4, 0x5f

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x5c

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x44

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x2b

    aput v4, v2, v3

    const-string v3, "Video stream"

    .line 192
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 204
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    new-array v2, v6, [I

    const/16 v3, 0x30

    aput v3, v2, v1

    const/4 v3, 0x1

    .line 205
    const/16 v4, 0x1a

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xfb

    aput v4, v2, v3

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0x62

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0xb

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xd0

    aput v4, v2, v3

    aput v8, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0xa3

    aput v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0x9b

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xa0

    aput v4, v2, v3

    const/16 v3, 0xc

    .line 206
    const/16 v4, 0xc9

    aput v4, v2, v3

    const/16 v3, 0xd

    aput v5, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x48

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0xf6

    aput v4, v2, v3

    const-string v3, "Script Command Object"

    .line 204
    invoke-direct {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->SCRIPT_COMMAND_OBJECT:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 209
    const/16 v0, 0x12

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_ABSENT:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v2, v0, v1

    const/4 v2, 0x1

    .line 210
    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v3, v0, v2

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_ENCODING:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v2, v0, v5

    const/4 v2, 0x4

    .line 211
    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_FILE:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_HEADER:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_STREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v3, v0, v2

    .line 212
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v2, v0, v7

    const/16 v2, 0x8

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    .line 213
    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    .line 214
    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->SCRIPT_COMMAND_OBJECT:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v3, v0, v2

    const/16 v2, 0xc

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v3, v0, v2

    const/16 v2, 0xd

    .line 215
    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_CONTENT_BRANDING:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v3, v0, v2

    const/16 v2, 0xe

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_UNSPECIFIED:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v3, v0, v2

    const/16 v2, 0xf

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_METADATA_LIBRARY:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v3, v0, v2

    .line 216
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_METADATA:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v2, v0, v6

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v2, v0, v8

    .line 209
    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->KNOWN_GUIDS:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->KNOWN_GUIDS:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_TO_CONFIGURED:Ljava/util/Map;

    .line 218
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->KNOWN_GUIDS:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    array-length v2, v0

    :goto_1
    if-lt v1, v2, :cond_1

    .line 224
    return-void

    :cond_0
    move v0, v1

    .line 34
    goto/16 :goto_0

    .line 218
    :cond_1
    aget-object v3, v0, v1

    .line 219
    sget-boolean v4, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    sget-object v4, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_TO_CONFIGURED:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Double definition: \""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_TO_CONFIGURED:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 221
    const-string v2, "\" <-> \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 222
    :cond_2
    sget-object v4, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_TO_CONFIGURED:Ljava/util/Map;

    invoke-interface {v4, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    nop

    :array_0
    .array-data 4
        0xa9
        0x46
        0x43
        0x7c
        0xe0
        0xef
        0xfc
        0x4b
        0xb2
        0x29
        0x39
        0x3e
        0xde
        0x41
        0x5c
        0x85
    .end array-data

    .line 137
    :array_1
    .array-data 4
        0xea
        0xcb
        0xf8
        0xc5
        0xaf
        0x5b
        0x77
        0x48
        0x84
        0x67
        0xaa
        0x8c
        0x44
        0xfa
        0x4c
        0xca
    .end array-data

    .line 144
    :array_2
    .array-data 4
        0x94
        0x1c
        0x23
        0x44
        0x98
        0x94
        0xd1
        0x49
        0xa1
        0x41
        0x1d
        0x13
        0x4e
        0x45
        0x70
        0x54
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 379
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->parseGUID(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getGUID()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([I)V

    .line 380
    if-nez p2, :cond_0

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    iput-object p2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->description:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->description:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->guidData:[I

    .line 334
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 335
    :cond_0
    array-length v0, p1

    new-array v1, v0, [I

    .line 336
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 339
    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->setGUID([I)V

    .line 340
    return-void

    .line 337
    :cond_1
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([I)V
    .locals 1

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->description:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->guidData:[I

    .line 349
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->setGUID([I)V

    .line 350
    return-void
.end method

.method public constructor <init>([ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([I)V

    .line 363
    if-nez p2, :cond_0

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    iput-object p2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->description:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public static assertGUID([I)Z
    .locals 2

    .prologue
    .line 236
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getConfigured(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_TO_CONFIGURED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public static getGuidDescription(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    if-nez p0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    invoke-static {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getConfigured(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 269
    invoke-static {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getConfigured(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_1
    return-object v0
.end method

.method private getHex([B)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 442
    array-length v0, p1

    new-array v2, v0, [Ljava/lang/String;

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 444
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_0

    .line 452
    return-object v2

    .line 445
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 446
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 448
    const-string v4, "0"

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static parseGUID(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/16 v6, 0x10

    const/4 v0, 0x0

    .line 286
    if-nez p0, :cond_0

    .line 287
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUIDFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUIDFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUIDFormatException;

    const-string v1, "Invalid guidData format."

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUIDFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    new-array v3, v6, [I

    .line 296
    new-array v4, v6, [I

    const/4 v1, 0x3

    aput v1, v4, v0

    aput v5, v4, v2

    aput v2, v4, v5

    const/4 v1, 0x5

    aput v1, v4, v7

    const/4 v1, 0x5

    aput v7, v4, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    aput v2, v4, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    aput v2, v4, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    aput v2, v4, v1

    const/16 v1, 0x9

    const/16 v2, 0x9

    aput v2, v4, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    aput v2, v4, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    aput v2, v4, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput v2, v4, v1

    const/16 v1, 0xd

    .line 297
    const/16 v2, 0xd

    aput v2, v4, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    aput v2, v4, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    aput v2, v4, v1

    move v1, v0

    .line 299
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 307
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-direct {v0, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([I)V

    return-object v0

    .line 300
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2d

    if-eq v2, v5, :cond_3

    .line 301
    add-int/lit8 v2, v1, 0x1

    aget v1, v4, v1

    .line 304
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v1

    .line 305
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 299
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setGUID([I)V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 508
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->assertGUID([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->guidData:[I

    .line 510
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->guidData:[I

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    return-void

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 513
    const-string v1, "The given guidData doesn\'t match the GUID specification."

    .line 512
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 395
    instance-of v1, p1, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    if-eqz v1, :cond_0

    .line 396
    check-cast p1, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 397
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getGUID()[I

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getGUID()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    .line 399
    :cond_0
    return v0
.end method

.method public final getBytes()[B
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->guidData:[I

    array-length v0, v0

    new-array v1, v0, [B

    .line 410
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 413
    return-object v1

    .line 411
    :cond_0
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->guidData:[I

    aget v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getGUID()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 429
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->guidData:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 430
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->guidData:[I

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->guidData:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 460
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->hash:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 462
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getGUID()[I

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 465
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->hash:I

    .line 467
    :cond_0
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->hash:I

    return v0

    .line 462
    :cond_1
    aget v4, v2, v0

    .line 463
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v4

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final isValid()Z
    .locals 1

    .prologue
    .line 477
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getGUID()[I

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->assertGUID([I)Z

    move-result v0

    return v0
.end method

.method public final prettyPrint()Ljava/lang/String;
    .locals 3

    .prologue
    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
    invoke-static {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getGuidDescription(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Ljava/lang/String;

    move-result-object v0

    .line 491
    :cond_0
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 492
    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 493
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 492
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 493
    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2d

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getHex([B)[Ljava/lang/String;

    move-result-object v1

    .line 527
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 532
    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    const/4 v2, 0x7

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const/4 v2, 0x6

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 538
    const/16 v2, 0x8

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const/16 v2, 0x9

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    const/16 v2, 0xa

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const/16 v2, 0xb

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const/16 v2, 0xc

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const/16 v2, 0xd

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const/16 v2, 0xe

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
