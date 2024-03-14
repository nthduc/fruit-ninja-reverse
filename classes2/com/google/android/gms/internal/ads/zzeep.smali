.class public final Lcom/google/android/gms/internal/ads/zzeep;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeep$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzeep;",
        "Lcom/google/android/gms/internal/ads/zzeep$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzeep;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhyn:Lcom/google/android/gms/internal/ads/zzeep;


# instance fields
.field private zzhyk:I

.field private zzhyl:I

.field private zzhym:Lcom/google/android/gms/internal/ads/zzeip;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeep;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeep;-><init>()V

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeep;->zzhyn:Lcom/google/android/gms/internal/ads/zzeep;

    .line 32
    const-class v1, Lcom/google/android/gms/internal/ads/zzeep;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzhym:Lcom/google/android/gms/internal/ads/zzeip;

    return-void
.end method

.method public static zzbbi()Lcom/google/android/gms/internal/ads/zzeep;
    .registers 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeep;->zzhyn:Lcom/google/android/gms/internal/ads/zzeep;

    return-object v0
.end method

.method static synthetic zzbbj()Lcom/google/android/gms/internal/ads/zzeep;
    .registers 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeep;->zzhyn:Lcom/google/android/gms/internal/ads/zzeep;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeeo;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 25
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeep;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 18
    const-class p2, Lcom/google/android/gms/internal/ads/zzeep;

    monitor-enter p2

    .line 19
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeep;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeep;->zzhyn:Lcom/google/android/gms/internal/ads/zzeep;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 22
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeep;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 23
    :cond_2a
    monitor-exit p2

    goto :goto_2f

    :catchall_2c
    move-exception p1

    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2c

    throw p1

    :cond_2f
    :goto_2f
    return-object p1

    .line 15
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeep;->zzhyn:Lcom/google/android/gms/internal/ads/zzeep;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    .line 12
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhyk"

    aput-object v0, p1, p2

    const-string p2, "zzhyl"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzhym"

    aput-object p3, p1, p2

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeep;->zzhyn:Lcom/google/android/gms/internal/ads/zzeep;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u000b\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzeep;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeep$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeep$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeeo;)V

    return-object p1

    .line 10
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeep;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeep;-><init>()V

    return-object p1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzbbf()Lcom/google/android/gms/internal/ads/zzeeq;
    .registers 2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzhyk:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeeq;->zzfb(I)Lcom/google/android/gms/internal/ads/zzeeq;

    move-result-object v0

    if-nez v0, :cond_a

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeeq;->zzhyt:Lcom/google/android/gms/internal/ads/zzeeq;

    :cond_a
    return-object v0
.end method

.method public final zzbbg()Lcom/google/android/gms/internal/ads/zzeer;
    .registers 2

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzhyl:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeer;->zzfc(I)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v0

    if-nez v0, :cond_a

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeer;->zzhza:Lcom/google/android/gms/internal/ads/zzeer;

    :cond_a
    return-object v0
.end method

.method public final zzbbh()Lcom/google/android/gms/internal/ads/zzeip;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzhym:Lcom/google/android/gms/internal/ads/zzeip;

    return-object v0
.end method
