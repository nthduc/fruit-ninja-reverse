.class public final Lcom/google/android/gms/internal/ads/zzbcs;
.super Lcom/google/android/gms/internal/ads/zzbdf;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final zzefh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzefi:Lcom/google/android/gms/internal/ads/zzbdx;

.field private final zzefj:Z

.field private zzefk:I

.field private zzefl:I

.field private zzefm:Landroid/media/MediaPlayer;

.field private zzefn:Landroid/net/Uri;

.field private zzefo:I

.field private zzefp:I

.field private zzefq:I

.field private zzefr:I

.field private zzefs:I

.field private zzeft:Lcom/google/android/gms/internal/ads/zzbds;

.field private zzefu:Z

.field private zzefv:I

.field private zzefw:Lcom/google/android/gms/internal/ads/zzbdc;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4d

    .line 274
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/16 v1, -0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_IO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/16 v1, -0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_MALFORMED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/16 v1, -0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/4 v1, 0x3

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_RENDERING_START"

    .line 280
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_4d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_SERVER_DIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MEDIA_ERROR_UNKNOWN"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/16 v1, 0x2bc

    .line 285
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    .line 286
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/16 v1, 0x2bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_END"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BAD_INTERLEAVING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/16 v1, 0x321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_NOT_SEEKABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/16 v1, 0x322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_METADATA_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_df

    .line 293
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/16 v1, 0x385

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    .line 295
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    const/16 v1, 0x386

    .line 297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_SUBTITLE_TIMED_OUT"

    .line 298
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_df
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzbdx;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdf;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefk:I

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefl:I

    .line 4
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/zzbcs;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefi:Lcom/google/android/gms/internal/ads/zzbdx;

    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefu:Z

    .line 7
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefj:Z

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefi:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbdx;->zzb(Lcom/google/android/gms/internal/ads/zzbdf;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbcs;)Lcom/google/android/gms/internal/ads/zzbdc;
    .registers 1

    .line 271
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefw:Lcom/google/android/gms/internal/ads/zzbdc;

    return-object p0
.end method

.method private final zzat(Z)V
    .registers 4

    const-string v0, "AdMediaPlayerView release"

    .line 197
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzeft:Lcom/google/android/gms/internal/ads/zzbds;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 199
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbds;->zzzo()V

    .line 200
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzeft:Lcom/google/android/gms/internal/ads/zzbds;

    .line 201
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_27

    .line 202
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 204
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzdj(I)V

    if-eqz p1, :cond_27

    .line 207
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefl:I

    .line 209
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefl:I

    :cond_27
    return-void
.end method

.method private final zzd(F)V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    .line 254
    :try_start_4
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    return-void

    :cond_8
    const-string p1, "AdMediaPlayerView setMediaPlayerVolume() called before onPrepared()."

    .line 258
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void
.end method

.method private final zzdj(I)V
    .registers 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 261
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefi:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zzaac()V

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzegf:Lcom/google/android/gms/internal/ads/zzbdz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdz;->zzaac()V

    goto :goto_1c

    .line 263
    :cond_e
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefk:I

    if-ne v1, v0, :cond_1c

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefi:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zzaad()V

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzegf:Lcom/google/android/gms/internal/ads/zzbdz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdz;->zzaad()V

    .line 266
    :cond_1c
    :goto_1c
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefk:I

    return-void
.end method

.method private final zzyy()V
    .registers 7

    const-string v0, "AdMediaPlayerView init MediaPlayer"

    .line 144
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefn:Landroid/net/Uri;

    if-eqz v1, :cond_cd

    if-nez v0, :cond_11

    goto/16 :goto_cd

    :cond_11
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbcs;->zzat(Z)V

    const/4 v2, 0x1

    .line 149
    :try_start_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlh()Lcom/google/android/gms/ads/internal/overlay/zzu;

    .line 150
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 151
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    .line 152
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 153
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 154
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 155
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 156
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 157
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 158
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefq:I

    .line 159
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefu:Z

    if-eqz v3, :cond_73

    .line 160
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzbds;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzeft:Lcom/google/android/gms/internal/ads/zzbds;

    .line 161
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzeft:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->getHeight()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbds;->zza(Landroid/graphics/SurfaceTexture;II)V

    .line 162
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzeft:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbds;->start()V

    .line 163
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzeft:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbds;->zzzp()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_6b

    move-object v0, v3

    goto :goto_73

    .line 166
    :cond_6b
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzeft:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbds;->zzzo()V

    const/4 v3, 0x0

    .line 167
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzeft:Lcom/google/android/gms/internal/ads/zzbds;

    .line 168
    :cond_73
    :goto_73
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefn:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 169
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzli()Lcom/google/android/gms/ads/internal/overlay/zzx;

    .line 170
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 176
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzbcs;->zzdj(I)V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_9e} :catch_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_9e} :catch_a1
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_9e} :catch_9f

    return-void

    :catch_9f
    move-exception v0

    goto :goto_a4

    :catch_a1
    move-exception v0

    goto :goto_a4

    :catch_a3
    move-exception v0

    .line 179
    :goto_a4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefn:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to initialize MediaPlayer at "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbcs;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_cd
    :goto_cd
    return-void
.end method

.method private final zzyz()V
    .registers 9

    .line 182
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefj:Z

    if-nez v0, :cond_5

    return-void

    .line 184
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzza()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    .line 185
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_59

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefl:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_59

    const-string v0, "AdMediaPlayerView nudging MediaPlayer"

    .line 186
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzd(F)V

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 190
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 191
    :cond_34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzza()Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    if-ne v3, v0, :cond_51

    .line 192
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0xfa

    cmp-long v7, v3, v5

    if-lez v7, :cond_34

    .line 194
    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 195
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdf;->zzzb()V

    :cond_59
    return-void
.end method

.method private final zzza()Z
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefk:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final getCurrentPosition()I
    .registers 2

    .line 232
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzza()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 233
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final getDuration()I
    .registers 2

    .line 229
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzza()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public final getVideoHeight()I
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 249
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final getVideoWidth()I
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 246
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    .line 70
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefq:I

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    const-string p1, "AdMediaPlayerView completion"

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbcs;->zzdj(I)V

    .line 55
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefl:I

    .line 56
    sget-object p1, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbcx;-><init>(Lcom/google/android/gms/internal/ads/zzbcs;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 62
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 63
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x26

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "AdMediaPlayerView MediaPlayer error: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    const/4 p3, -0x1

    .line 65
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzbcs;->zzdj(I)V

    .line 67
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefl:I

    .line 68
    sget-object p3, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcw;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbcw;-><init>(Lcom/google/android/gms/internal/ads/zzbcs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 58
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 59
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbcs;->zzefh:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 60
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x25

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "AdMediaPlayerView MediaPlayer info: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final onMeasure(II)V
    .registers 8

    .line 102
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefo:I

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcs;->getDefaultSize(II)I

    move-result v0

    .line 103
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefp:I

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzbcs;->getDefaultSize(II)I

    move-result v1

    .line 104
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefo:I

    if-lez v2, :cond_88

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefp:I

    if-lez v2, :cond_88

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzeft:Lcom/google/android/gms/internal/ads/zzbds;

    if-nez v2, :cond_88

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 107
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 108
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_48

    if-ne v1, v2, :cond_48

    .line 112
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefo:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefp:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_3d

    mul-int v0, v0, p2

    .line 113
    div-int/2addr v0, v2

    move v1, p2

    goto :goto_88

    :cond_3d
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_69

    mul-int v2, v2, p1

    .line 115
    div-int v1, v2, v0

    goto :goto_89

    :cond_48
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_5a

    .line 118
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefp:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefo:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_58

    if-le v0, p2, :cond_58

    goto :goto_67

    :cond_58
    move v1, v0

    goto :goto_89

    :cond_5a
    if-ne v1, v2, :cond_6b

    .line 123
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefo:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefp:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_68

    if-le v1, p1, :cond_68

    :goto_67
    goto :goto_69

    :cond_68
    move p1, v1

    :cond_69
    :goto_69
    move v1, p2

    goto :goto_89

    .line 126
    :cond_6b
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefo:I

    .line 127
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefp:I

    if-ne v1, v3, :cond_78

    if-le v4, p2, :cond_78

    mul-int v2, v2, p2

    .line 130
    div-int/2addr v2, v4

    move v1, p2

    goto :goto_79

    :cond_78
    move v1, v4

    :goto_79
    if-ne v0, v3, :cond_86

    if-le v2, p1, :cond_86

    .line 133
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefp:I

    mul-int p2, p2, p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefo:I

    div-int v1, p2, v0

    goto :goto_89

    :cond_86
    move p1, v2

    goto :goto_89

    :cond_88
    :goto_88
    move p1, v0

    .line 134
    :goto_89
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbcs;->setMeasuredDimension(II)V

    .line 135
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzeft:Lcom/google/android/gms/internal/ads/zzbds;

    if-eqz p2, :cond_93

    .line 136
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzbds;->zzm(II)V

    .line 137
    :cond_93
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ne p2, v0, :cond_ac

    .line 138
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefr:I

    if-lez p2, :cond_9f

    if-ne p2, p1, :cond_a5

    :cond_9f
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefs:I

    if-lez p2, :cond_a8

    if-eq p2, v1, :cond_a8

    .line 139
    :cond_a5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzyz()V

    .line 140
    :cond_a8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefr:I

    .line 141
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefs:I

    :cond_ac
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    const-string v0, "AdMediaPlayerView prepared"

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 39
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzdj(I)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefi:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zzfb()V

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbcu;-><init>(Lcom/google/android/gms/internal/ads/zzbcs;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    .line 42
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefo:I

    .line 43
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefp:I

    .line 44
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefv:I

    if-eqz p1, :cond_2b

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdf;->seekTo(I)V

    .line 46
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzyz()V

    .line 47
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefo:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefp:I

    const/16 v1, 0x3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView stream dimensions: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " x "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    .line 48
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefl:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_58

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdf;->play()V

    .line 50
    :cond_58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdf;->zzzb()V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    const-string p1, "AdMediaPlayerView surface created"

    .line 72
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzyy()V

    .line 74
    sget-object p1, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbcz;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzbcz;-><init>(Lcom/google/android/gms/internal/ads/zzbcs;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    const-string p1, "AdMediaPlayerView surface destroyed"

    .line 87
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_13

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefv:I

    if-nez v0, :cond_13

    .line 89
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefv:I

    .line 90
    :cond_13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzeft:Lcom/google/android/gms/internal/ads/zzbds;

    if-eqz p1, :cond_1a

    .line 91
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbds;->zzzo()V

    .line 92
    :cond_1a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdb;-><init>(Lcom/google/android/gms/internal/ads/zzbcs;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbcs;->zzat(Z)V

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 7

    const-string p1, "AdMediaPlayerView surface changed"

    .line 76
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 77
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefl:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 78
    :goto_f
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefo:I

    if-ne v2, p2, :cond_18

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefp:I

    if-ne v2, p3, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 79
    :goto_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2b

    if-eqz p1, :cond_2b

    if-eqz v0, :cond_2b

    .line 80
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefv:I

    if-eqz p1, :cond_28

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdf;->seekTo(I)V

    .line 82
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdf;->play()V

    .line 83
    :cond_2b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzeft:Lcom/google/android/gms/internal/ads/zzbds;

    if-eqz p1, :cond_32

    .line 84
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbds;->zzm(II)V

    .line 85
    :cond_32
    sget-object p1, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcy;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbcy;-><init>(Lcom/google/android/gms/internal/ads/zzbcs;II)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefi:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdx;->zzc(Lcom/google/android/gms/internal/ads/zzbdf;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzege:Lcom/google/android/gms/internal/ads/zzbdp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefw:Lcom/google/android/gms/internal/ads/zzbdc;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbdp;->zza(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/zzbdc;)V

    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView size changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " x "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefo:I

    .line 34
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefp:I

    .line 35
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefo:I

    if-eqz p1, :cond_35

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefp:I

    if-eqz p1, :cond_35

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->requestLayout()V

    :cond_35
    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .registers 4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbcv;-><init>(Lcom/google/android/gms/internal/ads/zzbcs;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    .line 100
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdf;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final pause()V
    .registers 4

    const-string v0, "AdMediaPlayerView pause"

    .line 220
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzza()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_26

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 224
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbcs;->zzdj(I)V

    .line 225
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbdd;-><init>(Lcom/google/android/gms/internal/ads/zzbcs;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    .line 227
    :cond_26
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefl:I

    return-void
.end method

.method public final play()V
    .registers 4

    const-string v0, "AdMediaPlayerView play"

    .line 211
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzza()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_23

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 214
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbcs;->zzdj(I)V

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzege:Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdp;->zzzd()V

    .line 216
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbda;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbda;-><init>(Lcom/google/android/gms/internal/ads/zzbcs;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    .line 218
    :cond_23
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefl:I

    return-void
.end method

.method public final seekTo(I)V
    .registers 4

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView seek "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzza()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 237
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    .line 238
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefv:I

    return-void

    .line 239
    :cond_25
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefv:I

    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .registers 4

    .line 13
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzte;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzte;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzte;->url:Ljava/lang/String;

    if-eqz v1, :cond_25

    :cond_e
    if-nez v0, :cond_11

    goto :goto_17

    .line 16
    :cond_11
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzte;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefn:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefv:I

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzyy()V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->requestLayout()V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcs;->invalidate()V

    :cond_25
    return-void
.end method

.method public final stop()V
    .registers 2

    const-string v0, "AdMediaPlayerView stop"

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1a

    .line 24
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefm:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzdj(I)V

    .line 29
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefl:I

    .line 30
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefi:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->onStop()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(FF)V
    .registers 4

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzeft:Lcom/google/android/gms/internal/ads/zzbds;

    if-eqz v0, :cond_7

    .line 243
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbds;->zzb(FF)V

    :cond_7
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbdc;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefw:Lcom/google/android/gms/internal/ads/zzbdc;

    return-void
.end method

.method final synthetic zzdk(I)V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefw:Lcom/google/android/gms/internal/ads/zzbdc;

    if-eqz v0, :cond_7

    .line 269
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->onWindowVisibilityChanged(I)V

    :cond_7
    return-void
.end method

.method public final zzyx()Ljava/lang/String;
    .registers 4

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzefu:Z

    if-eqz v0, :cond_7

    const-string v0, " spherical"

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "MediaPlayer"

    if-eqz v1, :cond_16

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzzb()V
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzegf:Lcom/google/android/gms/internal/ads/zzbdz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdz;->getVolume()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbcs;->zzd(F)V

    return-void
.end method
