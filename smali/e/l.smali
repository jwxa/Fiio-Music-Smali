.class public final Le/l;
.super Ljava/lang/Object;
.source "CipherSuite.java"


# static fields
.field public static final A:Le/l;

.field public static final B:Le/l;

.field public static final C:Le/l;

.field public static final D:Le/l;

.field public static final E:Le/l;

.field public static final F:Le/l;

.field public static final G:Le/l;

.field public static final H:Le/l;

.field public static final I:Le/l;

.field public static final J:Le/l;

.field public static final K:Le/l;

.field public static final L:Le/l;

.field public static final M:Le/l;

.field public static final N:Le/l;

.field public static final O:Le/l;

.field public static final P:Le/l;

.field public static final Q:Le/l;

.field public static final R:Le/l;

.field public static final S:Le/l;

.field public static final T:Le/l;

.field public static final U:Le/l;

.field public static final V:Le/l;

.field public static final W:Le/l;

.field public static final X:Le/l;

.field public static final Y:Le/l;

.field public static final Z:Le/l;

.field public static final a:Le/l;

.field public static final aA:Le/l;

.field public static final aB:Le/l;

.field public static final aC:Le/l;

.field public static final aD:Le/l;

.field public static final aE:Le/l;

.field public static final aF:Le/l;

.field public static final aG:Le/l;

.field public static final aH:Le/l;

.field public static final aI:Le/l;

.field public static final aJ:Le/l;

.field public static final aK:Le/l;

.field public static final aL:Le/l;

.field public static final aM:Le/l;

.field public static final aN:Le/l;

.field public static final aO:Le/l;

.field public static final aP:Le/l;

.field public static final aQ:Le/l;

.field public static final aR:Le/l;

.field public static final aS:Le/l;

.field public static final aT:Le/l;

.field public static final aU:Le/l;

.field public static final aV:Le/l;

.field public static final aW:Le/l;

.field public static final aX:Le/l;

.field public static final aY:Le/l;

.field public static final aZ:Le/l;

.field public static final aa:Le/l;

.field public static final ab:Le/l;

.field public static final ac:Le/l;

.field public static final ad:Le/l;

.field public static final ae:Le/l;

.field public static final af:Le/l;

.field public static final ag:Le/l;

.field public static final ah:Le/l;

.field public static final ai:Le/l;

.field public static final aj:Le/l;

.field public static final ak:Le/l;

.field public static final al:Le/l;

.field public static final am:Le/l;

.field public static final an:Le/l;

.field public static final ao:Le/l;

.field public static final ap:Le/l;

.field public static final aq:Le/l;

.field public static final ar:Le/l;

.field public static final as:Le/l;

.field public static final at:Le/l;

.field public static final au:Le/l;

.field public static final av:Le/l;

.field public static final aw:Le/l;

.field public static final ax:Le/l;

.field public static final ay:Le/l;

.field public static final az:Le/l;

.field public static final b:Le/l;

.field public static final ba:Le/l;

.field public static final bb:Le/l;

.field public static final bc:Le/l;

.field public static final bd:Le/l;

.field public static final be:Le/l;

.field public static final bf:Le/l;

.field public static final bg:Le/l;

.field public static final bh:Le/l;

.field private static final bj:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Le/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Le/l;

.field public static final d:Le/l;

.field public static final e:Le/l;

.field public static final f:Le/l;

.field public static final g:Le/l;

.field public static final h:Le/l;

.field public static final i:Le/l;

.field public static final j:Le/l;

.field public static final k:Le/l;

.field public static final l:Le/l;

.field public static final m:Le/l;

.field public static final n:Le/l;

.field public static final o:Le/l;

.field public static final p:Le/l;

.field public static final q:Le/l;

.field public static final r:Le/l;

.field public static final s:Le/l;

.field public static final t:Le/l;

.field public static final u:Le/l;

.field public static final v:Le/l;

.field public static final w:Le/l;

.field public static final x:Le/l;

.field public static final y:Le/l;

.field public static final z:Le/l;


# instance fields
.field final bi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Le/l;->bj:Ljava/util/concurrent/ConcurrentMap;

    .line 43
    const-string v0, "SSL_RSA_WITH_NULL_MD5"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->a:Le/l;

    .line 44
    const-string v0, "SSL_RSA_WITH_NULL_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->b:Le/l;

    .line 45
    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->c:Le/l;

    .line 46
    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->d:Le/l;

    .line 47
    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->e:Le/l;

    .line 50
    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->f:Le/l;

    .line 51
    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->g:Le/l;

    .line 52
    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->h:Le/l;

    .line 59
    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->i:Le/l;

    .line 60
    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->j:Le/l;

    .line 61
    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->k:Le/l;

    .line 62
    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->l:Le/l;

    .line 63
    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->m:Le/l;

    .line 64
    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->n:Le/l;

    .line 65
    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->o:Le/l;

    .line 66
    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->p:Le/l;

    .line 67
    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->q:Le/l;

    .line 68
    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->r:Le/l;

    .line 69
    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->s:Le/l;

    .line 70
    const-string v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->t:Le/l;

    .line 71
    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->u:Le/l;

    .line 72
    const-string v0, "TLS_KRB5_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->v:Le/l;

    .line 74
    const-string v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->w:Le/l;

    .line 75
    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->x:Le/l;

    .line 76
    const-string v0, "TLS_KRB5_WITH_RC4_128_MD5"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->y:Le/l;

    .line 78
    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->z:Le/l;

    .line 80
    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->A:Le/l;

    .line 81
    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->B:Le/l;

    .line 83
    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->C:Le/l;

    .line 87
    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->D:Le/l;

    .line 90
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->E:Le/l;

    .line 91
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->F:Le/l;

    .line 92
    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->G:Le/l;

    .line 93
    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->H:Le/l;

    .line 96
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->I:Le/l;

    .line 97
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->J:Le/l;

    .line 98
    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->K:Le/l;

    .line 99
    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->L:Le/l;

    .line 100
    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->M:Le/l;

    .line 101
    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->N:Le/l;

    .line 104
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->O:Le/l;

    .line 105
    const-string v0, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->P:Le/l;

    .line 108
    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->Q:Le/l;

    .line 109
    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->R:Le/l;

    .line 111
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->S:Le/l;

    .line 114
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->T:Le/l;

    .line 115
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->U:Le/l;

    .line 116
    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->V:Le/l;

    .line 117
    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->W:Le/l;

    .line 118
    const-string v0, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->X:Le/l;

    .line 121
    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->Y:Le/l;

    .line 122
    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->Z:Le/l;

    .line 124
    const-string v0, "TLS_PSK_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aa:Le/l;

    .line 125
    const-string v0, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->ab:Le/l;

    .line 126
    const-string v0, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->ac:Le/l;

    .line 127
    const-string v0, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->ad:Le/l;

    .line 136
    const-string v0, "TLS_RSA_WITH_SEED_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->ae:Le/l;

    .line 142
    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->af:Le/l;

    .line 143
    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->ag:Le/l;

    .line 144
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->ah:Le/l;

    .line 145
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->ai:Le/l;

    .line 148
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aj:Le/l;

    .line 149
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->ak:Le/l;

    .line 152
    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->al:Le/l;

    .line 153
    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->am:Le/l;

    .line 184
    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->an:Le/l;

    .line 185
    const-string v0, "TLS_FALLBACK_SCSV"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->ao:Le/l;

    .line 186
    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->ap:Le/l;

    .line 187
    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aq:Le/l;

    .line 188
    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->ar:Le/l;

    .line 189
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->as:Le/l;

    .line 190
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->at:Le/l;

    .line 191
    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->au:Le/l;

    .line 192
    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->av:Le/l;

    .line 193
    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aw:Le/l;

    .line 194
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->ax:Le/l;

    .line 195
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->ay:Le/l;

    .line 196
    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->az:Le/l;

    .line 197
    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aA:Le/l;

    .line 198
    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aB:Le/l;

    .line 199
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aC:Le/l;

    .line 200
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aD:Le/l;

    .line 201
    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aE:Le/l;

    .line 202
    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aF:Le/l;

    .line 203
    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aG:Le/l;

    .line 204
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aH:Le/l;

    .line 205
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aI:Le/l;

    .line 206
    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aJ:Le/l;

    .line 207
    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aK:Le/l;

    .line 208
    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aL:Le/l;

    .line 209
    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aM:Le/l;

    .line 210
    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aN:Le/l;

    .line 220
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aO:Le/l;

    .line 221
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aP:Le/l;

    .line 222
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aQ:Le/l;

    .line 223
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aR:Le/l;

    .line 224
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aS:Le/l;

    .line 225
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aT:Le/l;

    .line 226
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aU:Le/l;

    .line 227
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aV:Le/l;

    .line 228
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aW:Le/l;

    .line 229
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aX:Le/l;

    .line 230
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aY:Le/l;

    .line 231
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->aZ:Le/l;

    .line 232
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->ba:Le/l;

    .line 233
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->bb:Le/l;

    .line 234
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->bc:Le/l;

    .line 235
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->bd:Le/l;

    .line 238
    const-string v0, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->be:Le/l;

    .line 239
    const-string v0, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->bf:Le/l;

    .line 361
    const-string v0, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->bg:Le/l;

    .line 362
    const-string v0, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v0

    sput-object v0, Le/l;->bh:Le/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    if-nez p1, :cond_0

    .line 387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 389
    :cond_0
    iput-object p1, p0, Le/l;->bi:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public static a(Ljava/lang/String;)Le/l;
    .locals 2

    .prologue
    .line 376
    sget-object v0, Le/l;->bj:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/l;

    .line 377
    if-nez v0, :cond_0

    .line 378
    new-instance v1, Le/l;

    invoke-direct {v1, p0}, Le/l;-><init>(Ljava/lang/String;)V

    .line 379
    sget-object v0, Le/l;->bj:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/l;

    .line 380
    if-nez v0, :cond_0

    move-object v0, v1

    .line 382
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Le/l;->bi:Ljava/lang/String;

    return-object v0
.end method
