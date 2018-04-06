.class public Lcom/example/root/checkappmusic/FiioMediaPlayer;
.super Ljava/lang/Object;
.source "FiioMediaPlayer.java"


# static fields
.field private static final D2P:Ljava/lang/String; = "dsdToPCM"

.field private static final PCMSTANDARBUFFERSIZE:I = 0x10000

.field private static final STANDARDBUFFER:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "xyz-FiioMediaPlayer"

.field private static sunPcm:[B

.field private static targetViperPcm:[B

.field private static troughViperEffect:[B


# instance fields
.field private Changed:Z

.field ChileThreadNeedRepead:Z

.field CompleteFlag0:Z

.field CompleteFlag1:Z

.field public CurrentFileHandle:I

.field private CurrentStatus:I

.field private DsdDataFormat:I

.field private Initialed:Z

.field private IsFirstSlidePlay:Z

.field IsFulllPcmBuffer0:Z

.field IsFulllPcmBuffer1:Z

.field IsPlaying:Z

.field private MyDsfFile:Lcom/example/root/checkappmusic/DsfExtractor;

.field private PcmBuffer0:[B

.field private PcmBuffer1:[B

.field private SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

.field public SampleRate:I

.field private audioDataFormat:I

.field private audioTrack:Landroid/media/AudioTrack;

.field private autoOnComplete:Z

.field private bluetoothState:Z

.field private buffSize:I

.field bytesChannelSample:I

.field bytesSample:I

.field private changeToNextSongImmediately:Z

.field channels:I

.field private countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

.field private cueFlag:Z

.field private d2p_flag:Z

.field dsd:Lorg/justcodecs/dsd/DSDFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/justcodecs/dsd/DSDFormat",
            "<*>;"
        }
    .end annotation
.end field

.field private firstTime:Z

.field private flag_viper:Z

.field private goGaplessPlayBack:Z

.field private haveEnding:Z

.field private isReceived:Z

.field private jumpToSong:Z

.field private lastAudioDataFormat:I

.field private lastChannelCount:I

.field lastDuration:I

.field private lastSampleRateInHz:I

.field private mChildHandler:Landroid/os/Handler;

.field private mDeviceIsX5:Z

.field private mDeviceIsX7:Z

.field mDuration:I

.field private mGetBufferhandle:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mListenerContext:I

.field public mMainHandler:Landroid/os/Handler;

.field private mNativeContext:I

.field private mNativeSurfaceTexture:I

.field private mOnBufferingUpdateListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnErrorListener;

.field private mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

.field private mOrgTrackChannel:I

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTimer:Ljava/util/Timer;

.field private mTracnChannel:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mateDate:[B

.field private nextSong:Lcom/fiio/music/entity/Song;

.field private nextsSong:Lcom/fiio/music/entity/Song;

.field private originalSampleRate:I

.field private pauseFlag:Z

.field pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

.field playBuffer:[B

.field playLenthCount:I

.field private playingFilePath:Ljava/lang/String;

.field public realDuration:I

.field private sacdBlockSeekFlag:Z

.field private sacdFlag:Z

.field sampleCount:J

.field samples:[[I

.field seekToFlag:Z

.field seekToMsec:I

.field seekToMsecForMemory:Z

.field private smpViperSupport:Z

.field public startMsec:I

.field private startSample:J

.field private startTime:J

.field testSeek:I

.field totalFileLenth:J

.field private trackVolume:F

.field useFloatFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const-string v0, "hello-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->flag_viper:Z

    .line 100
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->smpViperSupport:Z

    .line 117
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->d2p_flag:Z

    .line 153
    const v0, 0xac44

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    .line 154
    const v0, 0xac44

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->originalSampleRate:I

    .line 155
    const/16 v0, 0xc

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mTracnChannel:I

    .line 156
    iput v6, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOrgTrackChannel:I

    .line 157
    iput v6, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDataFormat:I

    .line 161
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->useFloatFormat:Z

    .line 169
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CompleteFlag0:Z

    .line 170
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CompleteFlag1:Z

    .line 171
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    .line 183
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsecForMemory:Z

    .line 184
    iput v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->lastDuration:I

    .line 197
    iput v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDuration:I

    .line 198
    iput v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    .line 200
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->haveEnding:Z

    .line 202
    iput-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsFirstSlidePlay:Z

    .line 214
    iput-object v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 217
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mTimer:Ljava/util/Timer;

    .line 221
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->bluetoothState:Z

    .line 224
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->Initialed:Z

    .line 226
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->Changed:Z

    .line 229
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->trackVolume:F

    .line 231
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->changeToNextSongImmediately:Z

    .line 269
    new-instance v0, Lcom/example/root/checkappmusic/b;

    invoke-direct {v0, p0}, Lcom/example/root/checkappmusic/b;-><init>(Lcom/example/root/checkappmusic/FiioMediaPlayer;)V

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mHandler:Landroid/os/Handler;

    .line 317
    new-instance v0, Lcom/example/root/checkappmusic/c;

    invoke-direct {v0, p0}, Lcom/example/root/checkappmusic/c;-><init>(Lcom/example/root/checkappmusic/FiioMediaPlayer;)V

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mMainHandler:Landroid/os/Handler;

    .line 410
    iput-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isReceived:Z

    .line 1072
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pauseFlag:Z

    .line 1137
    iput-wide v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startTime:J

    .line 1194
    iput-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->firstTime:Z

    .line 1872
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->cueFlag:Z

    .line 1874
    iput-wide v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startSample:J

    .line 1898
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdFlag:Z

    .line 1899
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdBlockSeekFlag:Z

    .line 1984
    iput-object v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    .line 1993
    iput-wide v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sampleCount:J

    .line 2239
    iput-object v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->nextSong:Lcom/fiio/music/entity/Song;

    .line 2251
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    .line 2308
    iput-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->autoOnComplete:Z

    .line 238
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsFulllPcmBuffer0:Z

    .line 239
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsFulllPcmBuffer1:Z

    .line 240
    iput-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 241
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    .line 242
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->haveEnding:Z

    .line 244
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "X7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDeviceIsX7:Z

    .line 245
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "X5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDeviceIsX5:Z

    .line 248
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDeviceIsX7:Z

    .line 253
    new-instance v0, Lcom/example/root/checkappmusic/d;

    invoke-direct {v0, p0}, Lcom/example/root/checkappmusic/d;-><init>(Lcom/example/root/checkappmusic/FiioMediaPlayer;)V

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/d;->start()V

    .line 254
    new-instance v0, Lcom/example/root/checkappmusic/f;

    invoke-direct {v0, p0}, Lcom/example/root/checkappmusic/f;-><init>(Lcom/example/root/checkappmusic/FiioMediaPlayer;)V

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/f;->start()V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mChildHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mGetBufferhandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Lcom/example/root/checkappmusic/h;

    invoke-direct {v0, p0, v2}, Lcom/example/root/checkappmusic/h;-><init>(Lcom/example/root/checkappmusic/FiioMediaPlayer;B)V

    .line 259
    invoke-static {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->a(Lcom/fiio/music/counttimer/a;)Lcom/fiio/music/counttimer/CountDownTimerService;

    move-result-object v0

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    .line 261
    return-void

    .line 256
    :cond_0
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public static native AudioDecodeProbe([B)[B
.end method

.method static synthetic access$0(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z
    .locals 1

    .prologue
    .line 1872
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->cueFlag:Z

    return v0
.end method

.method static synthetic access$1(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/fiio/music/counttimer/CountDownTimerService;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    return-object v0
.end method

.method static synthetic access$10(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    return-object v0
.end method

.method static synthetic access$11(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V
    .locals 0

    .prologue
    .line 410
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isReceived:Z

    return-void
.end method

.method static synthetic access$13(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pauseFlag:Z

    return v0
.end method

.method static synthetic access$14(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V
    .locals 0

    .prologue
    .line 1072
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pauseFlag:Z

    return-void
.end method

.method static synthetic access$15(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->haveEnding:Z

    return-void
.end method

.method static synthetic access$16(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V
    .locals 0

    .prologue
    .line 2308
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->autoOnComplete:Z

    return-void
.end method

.method static synthetic access$17(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V
    .locals 0

    .prologue
    .line 1194
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->firstTime:Z

    return-void
.end method

.method static synthetic access$18(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->codecDecode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$19(Lcom/example/root/checkappmusic/FiioMediaPlayer;)[B
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    return-object v0
.end method

.method static synthetic access$2(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z
    .locals 1

    .prologue
    .line 1898
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdFlag:Z

    return v0
.end method

.method static synthetic access$20(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z
    .locals 1

    .prologue
    .line 2251
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    return v0
.end method

.method static synthetic access$21(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/example/root/checkappmusic/FiioMediaPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1994
    invoke-direct {p0, p1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->initSACDDecoder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23(Lcom/example/root/checkappmusic/FiioMediaPlayer;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mChildHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$24(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mChildHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$25(Lcom/example/root/checkappmusic/FiioMediaPlayer;[B)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    return-void
.end method

.method static synthetic access$26(Lcom/example/root/checkappmusic/FiioMediaPlayer;)I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOrgTrackChannel:I

    return v0
.end method

.method static synthetic access$27(Lcom/example/root/checkappmusic/FiioMediaPlayer;)I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->originalSampleRate:I

    return v0
.end method

.method static synthetic access$28(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->flag_viper:Z

    return v0
.end method

.method static synthetic access$29(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->smpViperSupport:Z

    return v0
.end method

.method static synthetic access$3(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V
    .locals 0

    .prologue
    .line 2251
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    return-void
.end method

.method static synthetic access$30([BI)[B
    .locals 1

    .prologue
    .line 2119
    invoke-static {p0, p1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->splitPcm([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$31(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->jumpToSong:Z

    return v0
.end method

.method static synthetic access$32(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V
    .locals 0

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->jumpToSong:Z

    return-void
.end method

.method static synthetic access$33(Lcom/example/root/checkappmusic/FiioMediaPlayer;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mGetBufferhandle:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$4(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Landroid/media/AudioTrack;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$5(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lorg/justcodecs/dsd/DecoderInt;
    .locals 1

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    return-object v0
.end method

.method static synthetic access$6(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnCompletionListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V
    .locals 0

    .prologue
    .line 1479
    invoke-direct {p0, p1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/example/root/checkappmusic/FiioMediaPlayer$OnBufferingUpdateListener;
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnBufferingUpdateListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$9(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/example/root/checkappmusic/FiioMediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnErrorListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method private declared-synchronized codecDecode()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 373
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getTrackBufferSize()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeRead(II)[B

    move-result-object v2

    iput-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    .line 377
    iget v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOrgTrackChannel:I

    #如果通道数为1 单声道转双声道
    if-eq v2, v0, :cond_2

    .line 378
    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    iget v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->originalSampleRate:I

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    invoke-static {v2, v3, v4}, Lcom/example/root/checkappmusic/PlayerUtil;->GetResampleBuffer([BII)[B

    move-result-object v2

    iput-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    .line 391
    :goto_0
    iget-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->flag_viper:Z

    #如果flag_viper等于0 则:cond_1  直接返回
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B
    #PcmBuffer0为空
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    array-length v2, v2
    #PcmBuffer0长度为0
    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->smpViperSupport:Z
    #smpViperSupport不支持viper
    if-eqz v2, :cond_1

    .line 394
    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    const/16 v3, 0x2000

    invoke-static {v2, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->splitPcm([BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    .line 396
    iget-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->jumpToSong:Z

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 400
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->jumpToSong:Z

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 406
    :goto_1
    monitor-exit p0

    return v0

    .line 380
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    invoke-static {v2}, Lcom/example/root/checkappmusic/PlayerUtil;->changMonoToStereo([B)[B

    move-result-object v2

    iget v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->originalSampleRate:I

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    invoke-static {v2, v3, v4}, Lcom/example/root/checkappmusic/PlayerUtil;->GetResampleBuffer([BII)[B

    move-result-object v2

    iput-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private initCue(II)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1789
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    if-eqz v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DecoderInt;->dispose()V

    .line 1791
    iput-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    .line 1794
    :cond_0
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->cueFlag:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    if-eqz v0, :cond_1

    .line 1796
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "init Cue ---- \u5b9a\u65f6\u5668"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->e()V

    .line 1798
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/fiio/music/counttimer/CountDownTimerService;->a(J)V

    .line 1799
    iput p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playLenthCount:I

    .line 1800
    iput v5, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    .line 1870
    :goto_0
    return-void

    .line 1804
    :cond_1
    const-string v0, "xyz-FiioMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u521d\u59cb\u5316\uff0cseekToFlag="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    if-nez v0, :cond_3

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u521b\u5efaAudioTrack\uff0cseekToFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 1807
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getInitStateOk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1808
    iput-boolean v5, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 1809
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDestroy()V

    .line 1811
    :cond_2
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDataFormat:I

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mTracnChannel:I

    invoke-virtual {p0, v0, v1, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioCreate(III)Z

    .line 1813
    :cond_3
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->e()V

    .line 1814
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    invoke-interface {v0, v5}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;->onPrepareOk(Z)V

    .line 1816
    :try_start_0
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    if-nez v0, :cond_4

    .line 1817
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1818
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDecodeOpen([B[B)I

    move-result v0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    .line 1820
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "cue play handle : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " file path : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsFulllPcmBuffer1:Z

    .line 1823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsFulllPcmBuffer0:Z

    .line 1824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    .line 1825
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer1:[B

    .line 1826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->Initialed:Z

    .line 1827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->firstTime:Z

    .line 1828
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    if-nez v0, :cond_6

    .line 1829
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsecForMemory:Z

    if-eqz v0, :cond_5

    .line 1830
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->lastDuration:I

    sub-int v1, p2, v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/fiio/music/counttimer/CountDownTimerService;->a(J)V

    .line 1831
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->lastDuration:I

    add-int/2addr v1, p1

    int-to-double v4, v1

    invoke-virtual {p0, v0, v4, v5}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeSeek(ID)I

    .line 1833
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "playLenthCount:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->lastDuration:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " startMsec:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " realDuration"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    .line 1862
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->resetPrameterForMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    invoke-interface {v0, v6}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;->onPrepareOk(Z)V

    .line 1869
    :goto_2
    const-string v0, "xyz-FiioMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u521d\u59cb\u5316\u8017\u65f6="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1835
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, Lcom/fiio/music/counttimer/CountDownTimerService;->a(J)V

    .line 1836
    const-string v0, "sin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u8ba1\u65f6\u5668\u8bbe\u5b9a\u8ba1\u65f6\u65f6\u95f42\u521d\u59cb\u5316\uff1asetCountTime="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    int-to-double v4, p1

    invoke-virtual {p0, v0, v4, v5}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeSeek(ID)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1864
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1867
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    invoke-interface {v0, v6}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;->onPrepareOk(Z)V

    goto :goto_2

    .line 1841
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    sub-int v1, p2, v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/fiio/music/counttimer/CountDownTimerService;->a(J)V

    .line 1842
    const-string v0, "sin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u8ba1\u65f6\u5668\u8bbe\u5b9a\u8ba1\u65f6\u65f6\u95f43\u8df3\u8f6c\uff1asetCountTime="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    sub-int v4, p2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    add-int/2addr v0, p1

    .line 1844
    if-nez v0, :cond_7

    .line 1845
    add-int/lit8 v0, v0, 0x64

    .line 1847
    :cond_7
    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    int-to-double v4, v0

    invoke-virtual {p0, v1, v4, v5}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeSeek(ID)I

    .line 1848
    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playLenthCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1866
    :catchall_0
    move-exception v0

    .line 1867
    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    invoke-interface {v1, v6}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;->onPrepareOk(Z)V

    .line 1868
    throw v0
.end method

.method private initSACDDecoder(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x2

    .line 1995
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->createDecoder()Lorg/justcodecs/dsd/DecoderInt;

    move-result-object v0

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    .line 2003
    :try_start_0
    new-instance v0, Lorg/justcodecs/dsd/DISOFormat;

    invoke-direct {v0}, Lorg/justcodecs/dsd/DISOFormat;-><init>()V

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    .line 2011
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    new-instance v2, Lorg/justcodecs/dsd/Utils$RandomDSDStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/justcodecs/dsd/Utils$RandomDSDStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lorg/justcodecs/dsd/DSDFormat;->init(Lorg/justcodecs/dsd/DSDStream;)V

    .line 2012
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->dsd:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v0, v2}, Lorg/justcodecs/dsd/DecoderInt;->init(Lorg/justcodecs/dsd/DSDFormat;)V

    .line 2015
    new-instance v0, Lorg/justcodecs/dsd/Decoder$PCMFormat;

    invoke-direct {v0}, Lorg/justcodecs/dsd/Decoder$PCMFormat;-><init>()V

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    .line 2016
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    const v2, 0x2b110

    iput v2, v0, Lorg/justcodecs/dsd/Decoder$PCMFormat;->sampleRate:I

    .line 2017
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    const/16 v2, 0x10

    iput v2, v0, Lorg/justcodecs/dsd/Decoder$PCMFormat;->bitsPerSample:I

    .line 2018
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    const/4 v2, 0x2

    iput v2, v0, Lorg/justcodecs/dsd/Decoder$PCMFormat;->channels:I

    .line 2019
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    const/16 v2, 0x18

    iput v2, v0, Lorg/justcodecs/dsd/Decoder$PCMFormat;->bitsPerSample:I

    .line 2020
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    invoke-virtual {v0, v2}, Lorg/justcodecs/dsd/DecoderInt;->setPCMFormat(Lorg/justcodecs/dsd/Decoder$PCMFormat;)V

    .line 2022
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    iget v0, v0, Lorg/justcodecs/dsd/Decoder$PCMFormat;->channels:I

    const/16 v2, 0x800

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->samples:[[I

    .line 2023
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    iget v0, v0, Lorg/justcodecs/dsd/Decoder$PCMFormat;->channels:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->channels:I

    .line 2024
    const/4 v0, 0x2

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->bytesChannelSample:I

    .line 2025
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->channels:I

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->bytesChannelSample:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->bytesSample:I

    .line 2026
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->bytesSample:I

    mul-int/lit16 v0, v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playBuffer:[B

    .line 2028
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsecForMemory:Z

    if-eqz v0, :cond_1

    .line 2029
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    iget-wide v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startSample:J

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->lastDuration:I

    div-int/lit16 v1, v1, 0x3e8

    const v4, 0x2b1100

    mul-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/justcodecs/dsd/DecoderInt;->seek(J)V

    .line 2030
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->resetPrameterForMemory()V

    .line 2034
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->testSeek:I

    .line 2038
    return-void

    .line 2023
    :cond_0
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    iget v0, v0, Lorg/justcodecs/dsd/Decoder$PCMFormat;->channels:I

    goto :goto_0

    .line 2032
    :cond_1
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    iget-wide v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startSample:J

    invoke-virtual {v0, v2, v3}, Lorg/justcodecs/dsd/DecoderInt;->seek(J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2038
    :catch_0
    move-exception v0

    .line 2039
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initSacd(II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1904
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1905
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->closeHandle()V

    .line 1907
    :cond_0
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdFlag:Z

    if-eqz v0, :cond_1

    .line 1908
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DecoderInt;->dispose()V

    .line 1910
    :cond_1
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdBlockSeekFlag:Z

    if-nez v0, :cond_2

    .line 1911
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getInitStateOk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1912
    iput-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 1913
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDestroy()V

    .line 1916
    :cond_2
    const v0, 0x2b110

    invoke-virtual {p0, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdAudioCreate(I)Z

    .line 1917
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->e()V

    .line 1918
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    invoke-interface {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;->onPrepareOk(Z)V

    .line 1920
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 1921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->Initialed:Z

    .line 1924
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdBlockSeekFlag:Z

    if-nez v0, :cond_4

    .line 1925
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsecForMemory:Z

    if-eqz v0, :cond_3

    .line 1926
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->lastDuration:I

    sub-int v1, p2, v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/fiio/music/counttimer/CountDownTimerService;->a(J)V

    .line 1927
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->lastDuration:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playLenthCount:I

    .line 1940
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    .line 1942
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1943
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1944
    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1949
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    invoke-interface {v0, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;->onPrepareOk(Z)V

    .line 1951
    :goto_1
    return-void

    .line 1929
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/fiio/music/counttimer/CountDownTimerService;->a(J)V

    .line 1930
    iput p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playLenthCount:I

    .line 1931
    const-string v0, "sin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SACD\u8ba1\u65f6\u5668\u8bbe\u5b9a\u8ba1\u65f6\u65f6\u95f44\u521d\u59cb\u5316\uff1asetCountTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1946
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1949
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    invoke-interface {v0, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;->onPrepareOk(Z)V

    goto :goto_1

    .line 1934
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    sub-int v1, p2, v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/fiio/music/counttimer/CountDownTimerService;->a(J)V

    .line 1935
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playLenthCount:I

    .line 1936
    const-string v0, "sin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SACD\u8ba1\u65f6\u5668\u8bbe\u5b9a\u8ba1\u65f6\u65f6\u95f45\u8df3\u8f6c\uff1asetCountTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1948
    :catchall_0
    move-exception v0

    .line 1949
    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    invoke-interface {v1, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;->onPrepareOk(Z)V

    .line 1950
    throw v0
.end method

.method private setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 990
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    .line 991
    return-void
.end method

.method private static splitPcm([BI)[B
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2121
    array-length v0, p0

    rem-int/2addr v0, p1

    if-nez v0, :cond_0

    array-length v0, p0

    div-int/2addr v0, p1

    .line 2122
    :goto_0
    array-length v1, p0

    new-array v1, v1, [B

    sput-object v1, Lcom/example/root/checkappmusic/FiioMediaPlayer;->targetViperPcm:[B

    move v5, v2

    .line 2123
    :goto_1
    if-lt v5, v0, :cond_1

    .line 2151
    sget-object v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->targetViperPcm:[B

    return-object v0

    .line 2121
    :cond_0
    array-length v0, p0

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2124
    :cond_1
    array-length v1, p0

    rem-int/2addr v1, p1

    if-eqz v1, :cond_4

    .line 2125
    add-int/lit8 v1, v0, -0x1

    if-ne v5, v1, :cond_4

    .line 2128
    array-length v1, p0

    mul-int v3, v5, p1

    sub-int/2addr v1, v3

    new-array v1, v1, [B

    sput-object v1, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sunPcm:[B

    .line 2133
    :goto_2
    mul-int v1, v5, p1

    move v3, v1

    move v1, v2

    .line 2135
    :goto_3
    if-ge v1, p1, :cond_2

    array-length v4, p0

    if-lt v3, v4, :cond_5

    .line 2142
    :cond_2
    sget-object v1, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sunPcm:[B

    sget-object v3, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sunPcm:[B

    array-length v3, v3

    invoke-static {v1, v3}, Lcom/audlabs/vipereffect/ViPEREffect;->setViPERProcess([BI)[B

    move-result-object v1

    sput-object v1, Lcom/example/root/checkappmusic/FiioMediaPlayer;->troughViperEffect:[B

    .line 2145
    mul-int v1, v5, p1

    move v3, v1

    move v1, v2

    .line 2147
    :goto_4
    sget-object v4, Lcom/example/root/checkappmusic/FiioMediaPlayer;->troughViperEffect:[B

    array-length v4, v4

    if-ge v1, v4, :cond_3

    sget-object v4, Lcom/example/root/checkappmusic/FiioMediaPlayer;->targetViperPcm:[B

    array-length v4, v4

    if-lt v3, v4, :cond_6

    .line 2123
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 2130
    :cond_4
    new-array v1, p1, [B

    sput-object v1, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sunPcm:[B

    goto :goto_2

    .line 2136
    :cond_5
    sget-object v6, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sunPcm:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, v6, v1

    .line 2137
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_3

    .line 2148
    :cond_6
    sget-object v6, Lcom/example/root/checkappmusic/FiioMediaPlayer;->targetViperPcm:[B

    add-int/lit8 v4, v3, 0x1

    sget-object v7, Lcom/example/root/checkappmusic/FiioMediaPlayer;->troughViperEffect:[B

    aget-byte v7, v7, v1

    aput-byte v7, v6, v3

    .line 2147
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_4
.end method

.method private stayAwake(Z)V
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1481
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1482
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1487
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mStayAwake:Z

    .line 1488
    invoke-direct {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->updateSurfaceScreenOn()V

    .line 1489
    return-void

    .line 1483
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1492
    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1494
    :cond_0
    return-void

    .line 1492
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeBuff([B)V
    .locals 3

    .prologue
    .line 1700
    :try_start_0
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 1724
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1704
    :cond_1
    const/4 v0, 0x0

    .line 1705
    :cond_2
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1706
    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_2

    .line 1709
    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, p1, v0, v2}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1710
    packed-switch v1, :pswitch_data_0

    .line 1718
    add-int/2addr v0, v1

    goto :goto_1

    .line 1722
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1710
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public native AudioDecodeClose(I)I
.end method

.method public native AudioDecodeInit()I
.end method

.method public native AudioDecodeOpen([B[B)I
.end method

.method public native AudioDecodeRead(II)[B
.end method

.method public native AudioDecodeSeek(ID)I
.end method

.method public audioCreate(III)Z
    .locals 7

    .prologue
    const/high16 v5, 0x20000

    const/16 v1, 0xc

    const/4 v6, 0x1

    .line 1585
    const v0, 0x41000

    .line 1586
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v5, v0

    .line 1604
    :goto_0
    :pswitch_1
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    move v2, p1

    move v3, p3

    move v4, p2

    .line 1619
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 1614
    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 1620
    iput v5, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->buffSize:I

    .line 1621
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1624
    :goto_1
    return v6

    .line 1594
    :pswitch_2
    const v5, 0x8000

    .line 1595
    goto :goto_0

    .line 1598
    :pswitch_3
    const/16 v0, 0xa

    .line 1597
    invoke-static {p1, v1, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u521b\u5efa32bit audioTrack BufferSizeMax="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1603
    :pswitch_4
    const/4 v0, 0x2

    .line 1602
    invoke-static {p1, v1, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    goto :goto_0

    .line 1624
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 1586
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized audioDecodeOpen([B[B)I
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeOpen([B[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public audioDestroy()V
    .locals 1

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1633
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioStop()V

    .line 1634
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 1635
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 1642
    :cond_0
    return-void
.end method

.method public audioPause()V
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1647
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 1651
    :cond_0
    return-void
.end method

.method public audioPlay([BII)I
    .locals 2

    .prologue
    .line 1654
    const/4 v0, 0x0

    .line 1662
    :try_start_0
    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1667
    :goto_0
    return v0

    .line 1665
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public audioPlayBuffer([BIIZ)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1672
    .line 1680
    if-eqz p4, :cond_0

    .line 1685
    :try_start_0
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getTrack()Landroid/media/AudioTrack;

    move-result-object v1

    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer1:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer1:[B

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioTrack;->write([BII)I

    .line 1694
    :goto_0
    return v0

    .line 1687
    :cond_0
    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p3}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1692
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public audioSetVolume(I)V
    .locals 3

    .prologue
    .line 1726
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    .line 1727
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    sub-float/2addr v1, v0

    int-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->trackVolume:F

    .line 1728
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->trackVolume:F

    iget v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->trackVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 1731
    :cond_0
    return-void
.end method

.method public audioStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1734
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/ap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1735
    iput-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsFulllPcmBuffer0:Z

    .line 1736
    iput-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsFulllPcmBuffer1:Z

    .line 1737
    iput-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    .line 1738
    iput-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer1:[B

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1741
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 1746
    :cond_1
    return-void
.end method

.method public audioStop()V
    .locals 1

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 1752
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 1755
    :cond_0
    return-void
.end method

.method public closeHandle()V
    .locals 8

    .prologue
    .line 2327
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/ap;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2328
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/ap;->d()[I

    move-result-object v1

    .line 2329
    if-eqz v1, :cond_0

    .line 2330
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 2336
    :cond_0
    return-void

    .line 2330
    :cond_1
    aget v3, v1, v0

    .line 2331
    invoke-virtual {p0, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeClose(I)I

    move-result v4

    .line 2332
    sget-object v5, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "public close handle -- close : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " and success : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method createDecoder()Lorg/justcodecs/dsd/DecoderInt;
    .locals 1

    .prologue
    .line 2046
    new-instance v0, Lorg/justcodecs/dsd/DecoderInt;

    invoke-direct {v0}, Lorg/justcodecs/dsd/DecoderInt;-><init>()V

    return-object v0
.end method

.method public ctrlTimer()V
    .locals 3

    .prologue
    .line 1023
    const-string v0, "xyz-FiioMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ctrlTimer.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-virtual {v2}, Lcom/fiio/music/counttimer/CountDownTimerService;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1035
    :goto_0
    return-void

    .line 1026
    :pswitch_0
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->c()V

    goto :goto_0

    .line 1029
    :pswitch_1
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->d()V

    goto :goto_0

    .line 1032
    :pswitch_2
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->c()V

    goto :goto_0

    .line 1024
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public disposeTheDecoder()V
    .locals 1

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2051
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    if-eqz v0, :cond_0

    .line 2052
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DecoderInt;->dispose()V

    .line 2053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    .line 2055
    :cond_0
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 2056
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 2057
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 2059
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 1558
    const-string v0, "xyz-FiioMediaPlayer"

    const-string v1, "audio finalize--->"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1560
    return-void
.end method

.method public forSdCard()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1037
    iput-boolean v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 1040
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdFlag:Z

    if-nez v0, :cond_2

    .line 1042
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    invoke-virtual {p0, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeClose(I)I

    move-result v0

    .line 1043
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "forSDCard ######## close handle : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and  succes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->e()V

    .line 1056
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    if-nez v0, :cond_1

    .line 1057
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioStop()V

    .line 1060
    :cond_1
    iput-boolean v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    .line 1062
    return-void

    .line 1050
    :cond_2
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DecoderInt;->dispose()V

    .line 1052
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    goto :goto_0
.end method

.method public getCueFlag()Z
    .locals 1

    .prologue
    .line 1894
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->cueFlag:Z

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 1385
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playLenthCount:I

    if-ltz v0, :cond_0

    .line 1386
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playLenthCount:I

    .line 1388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1398
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDuration:I

    return v0
.end method

.method public getInitStateOk()Z
    .locals 1

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    const/4 v0, 0x1

    .line 1776
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMetaDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mateDate:[B

    if-nez v0, :cond_0

    .line 983
    const/4 v0, 0x0

    .line 986
    :goto_0
    return-object v0

    .line 985
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mateDate:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public getNextSong()Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->nextSong:Lcom/fiio/music/entity/Song;

    return-object v0
.end method

.method public getRealDuration()I
    .locals 1

    .prologue
    .line 1876
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->realDuration:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2107
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    .line 2109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSeekToMsec()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    return v0
.end method

.method public getStartMsec()I
    .locals 1

    .prologue
    .line 1882
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startMsec:I

    return v0
.end method

.method public getTrack()Landroid/media/AudioTrack;
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method public getTrackBufferSize()I
    .locals 3

    .prologue
    const/high16 v0, 0x10000

    .line 1764
    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->originalSampleRate:I

    const v2, 0x2ee00

    if-ne v1, v2, :cond_1

    .line 1768
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->buffSize:I

    if-lt v1, v0, :cond_0

    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->buffSize:I

    goto :goto_0
.end method

.method public getd2p_flag()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->d2p_flag:Z

    return v0
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1201
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DecoderInt;->dispose()V

    .line 1203
    iput-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    .line 1207
    :cond_0
    const-string v0, "xyz-FiioMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u521d\u59cb\u5316\uff0cseekToFlag="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    if-eqz v0, :cond_3

    .line 1213
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "goGaplessPlayBack"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    :goto_0
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    if-nez v0, :cond_6

    .line 1223
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->autoOnComplete:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    if-eqz v0, :cond_4

    .line 1225
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "1 . autoComplete and go Gapless ,so no destroy the audioTrack --"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    :goto_1
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->e()V

    .line 1245
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    invoke-interface {v0, v5}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;->onPrepareOk(Z)V

    .line 1248
    :try_start_0
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->autoOnComplete:Z

    if-eqz v0, :cond_b

    .line 1249
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/ap;->c()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1250
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "use next handle file path : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ap;->a(Ljava/lang/String;)I

    move-result v0

    .line 1254
    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    .line 1258
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->firstTime:Z

    .line 1357
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsFulllPcmBuffer1:Z

    .line 1358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->Initialed:Z

    .line 1360
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsecForMemory:Z

    if-eqz v0, :cond_1

    .line 1361
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->lastDuration:I

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    .line 1363
    :cond_1
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDuration:I

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/fiio/music/counttimer/CountDownTimerService;->a(J)V

    .line 1364
    const-string v0, "xyz-FiioMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u8ba1\u65f6\u5668\u8bbe\u5b9a\u8ba1\u65f6\u65f6\u95f41\uff1asetCountTime="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDuration:I

    iget v5, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    if-eqz v0, :cond_2

    .line 1366
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    int-to-double v4, v1

    invoke-virtual {p0, v0, v4, v5}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeSeek(ID)I

    .line 1367
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsFirstSlidePlay:Z

    .line 1369
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playLenthCount:I

    .line 1370
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    .line 1371
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->resetPrameterForMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1376
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    invoke-interface {v0, v7}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;->onPrepareOk(Z)V

    .line 1378
    :goto_3
    const-string v0, "xyz-FiioMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u521d\u59cb\u5316\u8017\u65f6="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    return-void

    .line 1215
    :cond_3
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "outGaplessPlayBack"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1227
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u521b\u5efaAudioTrack\uff0cseekToFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getInitStateOk()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1229
    iput-boolean v5, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 1230
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDestroy()V

    .line 1233
    :cond_5
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDataFormat:I

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mTracnChannel:I


    

    invoke-virtual {p0, v0, v1, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioCreate(III)Z

    goto/16 :goto_1

    .line 1240
    :cond_6
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "2 . seek , so no destroy the audioTrack --"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1271
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->closeHandle()V

    .line 1272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 1273
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getInitStateOk()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1274
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDestroy()V

    .line 1276
    :cond_8
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDataFormat:I

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mTracnChannel:I

    invoke-virtual {p0, v0, v1, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioCreate(III)Z

    .line 1277
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1278
    iget-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->d2p_flag:Z

    if-eqz v1, :cond_a

    .line 1279
    const-string v1, "dsdToPCM"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDecodeOpen([B[B)I

    move-result v1

    iput v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    .line 1280
    const-string v1, "sin"

    const-string v4, "d2p decoder"

    invoke-static {v1, v4}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    :goto_4
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "use new handle : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " file path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    if-gez v1, :cond_9

    .line 1286
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeInit()I

    move-result v1

    .line 1287
    sget-object v4, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "new handle < 0 , decoder init -- "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDecodeOpen([B[B)I

    move-result v0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    .line 1289
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "use new handle : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    .line 1292
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsFulllPcmBuffer0:Z

    .line 1293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->firstTime:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1373
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1376
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    invoke-interface {v0, v7}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;->onPrepareOk(Z)V

    goto/16 :goto_3

    .line 1282
    :cond_a
    :try_start_3
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDecodeOpen([B[B)I

    move-result v1

    iput v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 1375
    :catchall_0
    move-exception v0

    .line 1376
    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    invoke-interface {v1, v7}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;->onPrepareOk(Z)V

    .line 1377
    throw v0

    .line 1298
    :cond_b
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 1299
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    if-nez v0, :cond_d

    .line 1300
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getInitStateOk()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1301
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDestroy()V

    .line 1303
    :cond_c
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDataFormat:I

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mTracnChannel:I

    invoke-virtual {p0, v0, v1, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioCreate(III)Z

    .line 1307
    :cond_d
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    if-nez v0, :cond_11

    .line 1311
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1312
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->closeHandle()V

    .line 1314
    :cond_e
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1316
    iget-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->d2p_flag:Z

    if-eqz v1, :cond_10

    .line 1317
    const-string v1, "dsdToPCM"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDecodeOpen([B[B)I

    move-result v1

    iput v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    .line 1318
    const-string v1, "sin"

    const-string v4, "d2p decoder"

    invoke-static {v1, v4}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    :goto_5
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "use new handle : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " file path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    if-gez v1, :cond_f

    .line 1324
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeInit()I

    move-result v1

    .line 1325
    sget-object v4, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "new handle < 0 , decoder init -- "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDecodeOpen([B[B)I

    move-result v0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    .line 1327
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "use new handle : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    .line 1353
    :cond_f
    :goto_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsFulllPcmBuffer0:Z

    .line 1354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->firstTime:Z

    goto/16 :goto_2

    .line 1320
    :cond_10
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDecodeOpen([B[B)I

    move-result v1

    iput v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    goto :goto_5

    .line 1332
    :cond_11
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "use old handle : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    if-nez v0, :cond_12

    .line 1334
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1335
    iget-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->d2p_flag:Z

    if-eqz v1, :cond_13

    .line 1336
    const-string v1, "dsdToPCM"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDecodeOpen([B[B)I

    move-result v1

    iput v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    .line 1337
    const-string v1, "sin"

    const-string v4, "d2p decoder"

    invoke-static {v1, v4}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    :goto_7
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cause seek 0 , use new handle : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " file path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    if-gez v1, :cond_12

    .line 1343
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeInit()I

    move-result v1

    .line 1344
    sget-object v4, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "new handle < 0 , decoder init -- "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDecodeOpen([B[B)I

    move-result v0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    .line 1346
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "use new handle : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    .line 1350
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer0:[B

    .line 1351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->PcmBuffer1:[B

    goto/16 :goto_6

    .line 1339
    :cond_13
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDecodeOpen([B[B)I

    move-result v1

    iput v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7
.end method

.method public isAutoOnComplete()Z
    .locals 1

    .prologue
    .line 2314
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->autoOnComplete:Z

    return v0
.end method

.method public isBluetoothState()Z
    .locals 1

    .prologue
    .line 2094
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->bluetoothState:Z

    return v0
.end method

.method public isFlag_viper()Z
    .locals 1

    .prologue
    .line 2112
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->flag_viper:Z

    return v0
.end method

.method public isGaplessPlayBack()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2224
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v1

    .line 2226
    invoke-virtual {v1}, Lcom/fiio/music/util/ap;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2227
    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2228
    if-eqz v2, :cond_0

    .line 2229
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    iget v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDataFormat:I

    invoke-virtual {v1, v0, v3, v2}, Lcom/fiio/music/util/ap;->a(IILjava/lang/String;)Z

    move-result v0

    .line 2235
    :cond_0
    return v0
.end method

.method public isGoGaplessPlayBack()Z
    .locals 1

    .prologue
    .line 2264
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    return v0
.end method

.method public isJumpToSong()Z
    .locals 1

    .prologue
    .line 2154
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->jumpToSong:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1381
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    return v0
.end method

.method public isSacdBlockSeekFlag()Z
    .locals 1

    .prologue
    .line 2063
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdBlockSeekFlag:Z

    return v0
.end method

.method public isSacdFlag()Z
    .locals 1

    .prologue
    .line 1977
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdFlag:Z

    return v0
.end method

.method public isSeekToFlag()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    return v0
.end method

.method public isSmpViperSupport()Z
    .locals 1

    .prologue
    .line 2160
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->smpViperSupport:Z

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1074
    iget-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    if-eqz v2, :cond_2

    .line 1075
    iget-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdFlag:Z

    if-eqz v2, :cond_0

    .line 1076
    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 1077
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioPause()V

    .line 1078
    iput-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pauseFlag:Z

    .line 1079
    const-string v2, "xyz-FiioMediaPlayer"

    const-string v3, "Going to pause..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ctrlTimer()V

    .line 1081
    invoke-direct {p0, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stayAwake(Z)V

    .line 1133
    :goto_0
    iget-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    if-eqz v2, :cond_9

    :goto_1
    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    .line 1134
    return-void

    .line 1083
    :cond_0
    iput-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pauseFlag:Z

    .line 1084
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getInitStateOk()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1085
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioPause()V

    .line 1087
    :cond_1
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ctrlTimer()V

    .line 1088
    invoke-direct {p0, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stayAwake(Z)V

    goto :goto_0

    .line 1091
    :cond_2
    iget-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdFlag:Z

    if-eqz v2, :cond_4

    .line 1092
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getInitStateOk()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1093
    iget v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startMsec:I

    iget v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->realDuration:I

    invoke-direct {p0, v2, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->initSacd(II)V

    .line 1095
    :cond_3
    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mChildHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1096
    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pauseFlag:Z

    .line 1097
    invoke-direct {p0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stayAwake(Z)V

    goto :goto_0

    .line 1099
    :cond_4
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getInitStateOk()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1100
    iget-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->cueFlag:Z

    if-eqz v2, :cond_7

    .line 1101
    iget v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startMsec:I

    iget v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->realDuration:I

    invoke-direct {p0, v2, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->initCue(II)V

    .line 1107
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getInitStateOk()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1108
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getTrack()Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    .line 1110
    :cond_6
    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pauseFlag:Z

    .line 1111
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ctrlTimer()V

    .line 1112
    invoke-direct {p0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stayAwake(Z)V

    goto :goto_0

    .line 1102
    :cond_7
    iget-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdFlag:Z

    if-eqz v2, :cond_8

    .line 1103
    iget v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startMsec:I

    iget v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->realDuration:I

    invoke-direct {p0, v2, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->initSacd(II)V

    goto :goto_2

    .line 1105
    :cond_8
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->init()V

    goto :goto_2

    :cond_9
    move v0, v1

    .line 1133
    goto :goto_1
.end method

.method public pauseSeek(I)V
    .locals 4

    .prologue
    .line 1532
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getTrack()Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1533
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getTrack()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 1535
    :cond_0
    iput p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    .line 1536
    if-nez p1, :cond_1

    const/16 v0, 0x64

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    .line 1538
    :cond_1
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->cueFlag:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdFlag:Z

    if-nez v0, :cond_3

    .line 1539
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    int-to-double v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeSeek(ID)I

    .line 1549
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->e()V

    .line 1550
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDuration:I

    iget v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/fiio/music/counttimer/CountDownTimerService;->a(J)V

    .line 1551
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playLenthCount:I

    .line 1552
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    .line 1553
    return-void

    .line 1541
    :cond_3
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->cueFlag:Z

    if-eqz v0, :cond_2

    .line 1542
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startMsec:I

    iget v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    add-int/2addr v1, v2

    int-to-double v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeSeek(ID)I

    goto :goto_0
.end method

.method public peekNextSongInGapless()I
    .locals 3

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->nextSong:Lcom/fiio/music/entity/Song;

    .line 2272
    if-eqz v0, :cond_0

    .line 2273
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v2, "nextSong != null and decode the next"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDecodeOpen([B[B)I

    move-result v0

    .line 2276
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 1402
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->cueFlag:Z

    if-eqz v0, :cond_0

    .line 1403
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startMsec:I

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->realDuration:I

    invoke-direct {p0, v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->initCue(II)V

    .line 1406
    :goto_0
    return-void

    .line 1405
    :cond_0
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->init()V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1408
    invoke-direct {p0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stayAwake(Z)V

    .line 1409
    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnCompletionListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;

    .line 1410
    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnBufferingUpdateListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnBufferingUpdateListener;

    .line 1411
    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnErrorListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnErrorListener;

    .line 1412
    iput-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 1414
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    invoke-virtual {p0, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeClose(I)I

    .line 1415
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->e()V

    .line 1416
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDestroy()V

    .line 1417
    return-void
.end method

.method public resetAllHandle()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2285
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 2297
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2298
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2300
    :cond_0
    return-object v0

    .line 2286
    :cond_1
    iget v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    if-ne v1, v2, :cond_3

    .line 2287
    sget-object v2, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v3, "as same as current playing handle , go continue"

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2290
    :cond_3
    invoke-virtual {p0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeClose(I)I

    move-result v2

    .line 2291
    if-gez v2, :cond_2

    .line 2292
    sget-object v2, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reset failure --- handle : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public resetPrameterForMemory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    const-string v0, "long"

    const-string v1, "resetPrameterForMemory\u6267\u884c"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsecForMemory:Z

    .line 192
    iput v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->lastDuration:I

    .line 193
    return-void
.end method

.method public restart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1065
    :goto_0
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mGetBufferhandle:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    iput-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->MyDsfFile:Lcom/example/root/checkappmusic/DsfExtractor;

    .line 1069
    iput-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    .line 1070
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mGetBufferhandle:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sacdAudioCreate(I)Z
    .locals 8

    .prologue
    const/16 v3, 0xc

    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 1954
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 1956
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 1957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 1959
    :cond_0
    const v0, 0x2b110

    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    .line 1963
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    .line 1967
    mul-int/lit8 v5, v7, 0x2

    move v2, p1

    .line 1968
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 1963
    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 1969
    iput v7, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->buffSize:I

    .line 1970
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 1973
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public sacdPause()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2074
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2075
    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 2078
    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2079
    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    .line 2082
    :cond_0
    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    if-eqz v1, :cond_1

    .line 2083
    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    invoke-virtual {v1}, Lorg/justcodecs/dsd/DecoderInt;->dispose()V

    .line 2084
    :cond_1
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ctrlTimer()V

    .line 2085
    invoke-direct {p0, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stayAwake(Z)V

    .line 2089
    :cond_2
    iget-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    if-eqz v1, :cond_3

    :goto_0
    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    .line 2090
    return-void

    .line 2089
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sacdSetCurrentPosition(I)V
    .locals 0

    .prologue
    .line 1393
    iput p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playLenthCount:I

    .line 1394
    return-void
.end method

.method public seekTo(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1496
    const-string v0, "xyz-FiioMediaPlayer"

    const-string v1, "seekto()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iput p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    .line 1498
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 1501
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1503
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 1504
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 1506
    :cond_0
    iput-boolean v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    .line 1511
    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 1512
    const-string v1, "kuishe"

    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->a()Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1513
    const-string v1, "enable_viper"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1516
    if-eqz v0, :cond_1

    .line 1517
    iput-boolean v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->flag_viper:Z

    .line 1522
    :goto_0
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startPlay()V

    .line 1523
    return-void

    .line 1519
    :cond_1
    iput-boolean v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->flag_viper:Z

    goto :goto_0
.end method

.method public setAutoOnComplete(Z)V
    .locals 3

    .prologue
    .line 2321
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " set AutoOnComplete : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->autoOnComplete:Z

    .line 2323
    return-void
.end method

.method public setBluetoothState(Z)V
    .locals 0

    .prologue
    .line 2097
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->bluetoothState:Z

    .line 2098
    return-void
.end method

.method public setChangeToNextSongImmediately()V
    .locals 1

    .prologue
    .line 2102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->changeToNextSongImmediately:Z

    .line 2103
    return-void
.end method

.method public setCueFlag(Z)V
    .locals 0

    .prologue
    .line 1891
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->cueFlag:Z

    .line 1892
    return-void
.end method

.method public setDataSource(Ljava/lang/String;IIILjava/lang/String;ZLcom/fiio/music/entity/Song;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xc

    const/4 v3, 0x2

    .line 855
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->totalFileLenth:J

    .line 857
    const-string v0, "xyz-FiioMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDataSource sam="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iput-object p7, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->nextsSong:Lcom/fiio/music/entity/Song;

    .line 860
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DecoderInt;->dispose()V

    .line 861
    :cond_0
    if-eqz p1, :cond_1

    if-gtz p3, :cond_2

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 864
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 865
    iget-object v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    .line 867
    iput p2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDuration:I

    .line 978
    :goto_0
    return-void

    .line 869
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 870
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "diff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 871
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 873
    :cond_3
    new-instance v0, Lcom/example/root/checkappmusic/DsfExtractor;

    invoke-direct {v0, p1}, Lcom/example/root/checkappmusic/DsfExtractor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->MyDsfFile:Lcom/example/root/checkappmusic/DsfExtractor;

    .line 874
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->bluetoothState:Z

    if-nez v0, :cond_a

    .line 875
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->MyDsfFile:Lcom/example/root/checkappmusic/DsfExtractor;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/DsfExtractor;->getSamplerate()I

    move-result v0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    .line 876
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->MyDsfFile:Lcom/example/root/checkappmusic/DsfExtractor;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/DsfExtractor;->getSamplerate()I

    move-result v0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->originalSampleRate:I

    .line 877
    iput-object p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    .line 878
    if-eqz p2, :cond_7

    .line 879
    iput p2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDuration:I

    .line 885
    :goto_1
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->MyDsfFile:Lcom/example/root/checkappmusic/DsfExtractor;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/DsfExtractor;->getSamplerate()I

    move-result v0

    const v1, 0x15888

    if-ne v0, v1, :cond_8

    .line 886
    const/4 v0, 0x7

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->DsdDataFormat:I

    .line 892
    :goto_2
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->DsdDataFormat:I

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDataFormat:I

    .line 893
    iput-boolean v5, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->useFloatFormat:Z

    .line 946
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "channel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 947
    invoke-static {p1}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    const-string v1, "1"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Mono"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 949
    :cond_4
    iput v6, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOrgTrackChannel:I

    .line 950
    iput v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mTracnChannel:I

    .line 951
    const-string v1, "aiff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 952
    const-string v1, "flac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 953
    :cond_5
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->originalSampleRate:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->originalSampleRate:I

    .line 957
    :cond_6
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDeviceIsX7:Z

    iget-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDeviceIsX5:Z

    invoke-static {p3, v0, v1}, Lcom/example/root/checkappmusic/PlayerUtil;->GetSampedRateToPlay(IZZ)I

    move-result v0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5355\u58f0\u9053="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mTracnChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 881
    :cond_7
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->MyDsfFile:Lcom/example/root/checkappmusic/DsfExtractor;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/DsfExtractor;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDuration:I

    goto/16 :goto_1

    .line 887
    :cond_8
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->MyDsfFile:Lcom/example/root/checkappmusic/DsfExtractor;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/DsfExtractor;->getSamplerate()I

    move-result v0

    const v1, 0x2b110

    if-ne v0, v1, :cond_9

    .line 888
    const/16 v0, 0x8

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->DsdDataFormat:I

    goto/16 :goto_2

    .line 890
    :cond_9
    const/16 v0, 0x9

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->DsdDataFormat:I

    goto/16 :goto_2

    .line 896
    :cond_a
    const v0, 0xac44

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    .line 897
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->originalSampleRate:I

    .line 898
    iput-object p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    .line 899
    iput p2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDuration:I

    .line 901
    iput v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDataFormat:I

    .line 902
    iput-boolean v5, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->useFloatFormat:Z

    goto/16 :goto_3

    .line 908
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 909
    iput-object p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    .line 910
    iput p2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDuration:I

    goto/16 :goto_3

    .line 938
    :cond_c
    iput p3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->originalSampleRate:I

    .line 939
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDeviceIsX7:Z

    iget-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDeviceIsX5:Z

    invoke-static {p3, v0, v1}, Lcom/example/root/checkappmusic/PlayerUtil;->GetSampedRateToPlay(IZZ)I

    move-result v0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    .line 940
    iput-object p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    .line 941
    iput p2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDuration:I

    .line 942
    iput-boolean v6, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->useFloatFormat:Z

    .line 943
    const/16 v0, 0xa

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDataFormat:I

    goto/16 :goto_3

    .line 960
    :cond_d
    const-string v1, "6"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 964
    const-string v1, "aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 965
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->originalSampleRate:I

    const v1, 0x2ee00

    if-gt v0, v1, :cond_e

    .line 966
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->originalSampleRate:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->originalSampleRate:I

    .line 967
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDeviceIsX7:Z

    iget-boolean v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDeviceIsX5:Z

    invoke-static {p3, v0, v1}, Lcom/example/root/checkappmusic/PlayerUtil;->GetSampedRateToPlay(IZZ)I

    move-result v0

    iput v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    .line 970
    :cond_e
    iput v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOrgTrackChannel:I

    .line 971
    iput v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mTracnChannel:I

    goto/16 :goto_0

    .line 973
    :cond_f
    iput v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOrgTrackChannel:I

    .line 974
    iput v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mTracnChannel:I

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u53cc\u58f0\u9053="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mTracnChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setEqualizer(Z[F)V
    .locals 4

    .prologue
    .line 1563
    if-eqz p1, :cond_1

    .line 1565
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1573
    const-string v0, "media.audio.wzWqSet"

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    :goto_1
    return-void

    .line 1568
    :cond_0
    const-string v1, "zengxy++++"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gain[]   in setEqualizer +"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1570
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "media.audio.wzWqGain"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1571
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1576
    :cond_1
    const-string v0, "media.audio.wzWqSet"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setFlag_viper(Z)V
    .locals 0

    .prologue
    .line 2115
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->flag_viper:Z

    .line 2116
    return-void
.end method

.method public setGoGaplessPlayBack(Z)V
    .locals 0

    .prologue
    .line 2257
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    .line 2258
    return-void
.end method

.method public setJumpToSong(Z)V
    .locals 0

    .prologue
    .line 2157
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->jumpToSong:Z

    .line 2158
    return-void
.end method

.method public setNextSong(Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 2244
    iput-object p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->nextSong:Lcom/fiio/music/entity/Song;

    .line 2245
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/example/root/checkappmusic/FiioMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnBufferingUpdateListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnBufferingUpdateListener;

    .line 1444
    return-void
.end method

.method public setOnCompletionListener(Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnCompletionListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;

    .line 1425
    return-void
.end method

.method public setOnErrorListener(Lcom/example/root/checkappmusic/FiioMediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnErrorListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnErrorListener;

    .line 1453
    return-void
.end method

.method public setOnPrepareOkListener(Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;)V
    .locals 0

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mOnPrepareOkListener:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    .line 1435
    return-void
.end method

.method public setPrameterForMemory(ZI)V
    .locals 0

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsecForMemory:Z

    .line 187
    iput p2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->lastDuration:I

    .line 188
    return-void
.end method

.method public setRealDuration(I)V
    .locals 0

    .prologue
    .line 1879
    iput p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->realDuration:I

    .line 1880
    return-void
.end method

.method public setSacdBlockSeekFlag(ZI)V
    .locals 1

    .prologue
    .line 2066
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 2067
    iput p2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    .line 2068
    :cond_0
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdBlockSeekFlag:Z

    .line 2069
    return-void
.end method

.method public setSacdFlag(Z)V
    .locals 0

    .prologue
    .line 1980
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdFlag:Z

    .line 1981
    return-void
.end method

.method public setSeekToMsec(I)V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    .line 180
    iput p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    .line 181
    return-void
.end method

.method public setSmpViperSupport(Z)V
    .locals 0

    .prologue
    .line 2163
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->smpViperSupport:Z

    .line 2164
    return-void
.end method

.method public setStartMsec(I)V
    .locals 0

    .prologue
    .line 1885
    iput p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startMsec:I

    .line 1886
    return-void
.end method

.method public setStartSample(J)V
    .locals 1

    .prologue
    .line 1888
    iput-wide p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startSample:J

    .line 1889
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1463
    .line 1464
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 1465
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1466
    const/4 v0, 0x1

    .line 1467
    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1469
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move v2, v0

    .line 1472
    :goto_1
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1473
    const/high16 v3, 0x20000000

    or-int/2addr v3, p2

    const-class v4, Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1474
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1475
    if-eqz v2, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1478
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public setd2p_flag(Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->d2p_flag:Z

    .line 120
    return-void
.end method

.method public startPlay()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1139
    const-string v0, "xyz-FiioMediaPlayer"

    const-string v1, "startPlay..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    if-nez v0, :cond_1

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    iput-boolean v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    .line 1145
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdFlag:Z

    if-nez v0, :cond_3

    .line 1146
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    if-nez v0, :cond_2

    .line 1147
    iput v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    .line 1154
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->cueFlag:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdFlag:Z

    if-nez v0, :cond_4

    .line 1155
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->init()V

    .line 1163
    :goto_2
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->cueFlag:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    if-eqz v0, :cond_6

    .line 1164
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "CUE --- \u76f4\u63a5\u5f00\u59cb\u64ad\u653eCUE !! "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-direct {p0, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stayAwake(Z)V

    .line 1166
    iput-boolean v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    .line 1167
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ctrlTimer()V

    goto :goto_0

    .line 1150
    :cond_3
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdBlockSeekFlag:Z

    if-nez v0, :cond_2

    .line 1151
    iput v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToMsec:I

    goto :goto_1

    .line 1157
    :cond_4
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->cueFlag:Z

    if-eqz v0, :cond_5

    .line 1158
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startMsec:I

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->realDuration:I

    invoke-direct {p0, v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->initCue(II)V

    goto :goto_2

    .line 1160
    :cond_5
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->startMsec:I

    iget v1, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->realDuration:I

    invoke-direct {p0, v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->initSacd(II)V

    goto :goto_2

    .line 1170
    :cond_6
    iput-boolean v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekToFlag:Z

    .line 1171
    iput-boolean v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdBlockSeekFlag:Z

    .line 1172
    iput-boolean v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 1173
    const-string v0, "xyz-FiioMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startPlay.\u5b8c\u6210init \u5f00\u59cb\u53d1\u9001 Play \u5e7f\u64ad../n -- playingSongPath + "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playingFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdFlag:Z

    if-nez v0, :cond_8

    .line 1176
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isReceived:Z

    if-eqz v0, :cond_7

    .line 1177
    iput-boolean v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isReceived:Z

    .line 1178
    iput-boolean v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pauseFlag:Z

    .line 1179
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mChildHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1190
    :cond_7
    :goto_3
    invoke-direct {p0, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stayAwake(Z)V

    goto/16 :goto_0

    .line 1185
    :cond_8
    iput-boolean v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isReceived:Z

    .line 1186
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mChildHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3
.end method

.method public stopPlay()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 994
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->cueFlag:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->goGaplessPlayBack:Z

    if-eqz v0, :cond_1

    .line 995
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "CUE --- out way the stop play..."

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    if-eqz v0, :cond_0

    .line 999
    iput-boolean v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 1001
    const-string v0, "xyz-FiioMediaPlayer"

    const-string v1, "stop..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-boolean v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdFlag:Z

    if-nez v0, :cond_3

    .line 1004
    iget v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    invoke-virtual {p0, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->AudioDecodeClose(I)I

    move-result v0

    .line 1005
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ######## close handle : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CurrentFileHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and succes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->countDownTimerService:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->e()V

    .line 1015
    invoke-virtual {p0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioStop()V

    .line 1017
    iput-boolean v4, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    goto :goto_0

    .line 1008
    :cond_3
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    if-eqz v0, :cond_2

    .line 1009
    iget-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DecoderInt;->dispose()V

    .line 1010
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SACDdecoder:Lorg/justcodecs/dsd/DecoderInt;

    goto :goto_1
.end method
