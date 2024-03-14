.class public final Lcom/google/android/gms/internal/ads/zzent$zza;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzent$zza$zzb;,
        Lcom/google/android/gms/internal/ads/zzent$zza$zza;,
        Lcom/google/android/gms/internal/ads/zzent$zza$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzent$zza;",
        "Lcom/google/android/gms/internal/ads/zzent$zza$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzent$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziqi:Lcom/google/android/gms/internal/ads/zzent$zza;


# instance fields
.field private zzdw:I

.field private zziqb:I

.field private zziqc:Lcom/google/android/gms/internal/ads/zzent$zza$zza;

.field private zziqd:Lcom/google/android/gms/internal/ads/zzeip;

.field private zziqe:Lcom/google/android/gms/internal/ads/zzeip;

.field private zziqf:Z

.field private zziqg:Z

.field private zziqh:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzent$zza;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zza;->zziqi:Lcom/google/android/gms/internal/ads/zzent$zza;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzent$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzent$zza;->zziqh:B

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zza;->zziqd:Lcom/google/android/gms/internal/ads/zzeip;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zza;->zziqe:Lcom/google/android/gms/internal/ads/zzeip;

    return-void
.end method

.method static synthetic zzbjg()Lcom/google/android/gms/internal/ads/zzent$zza;
    .registers 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzent$zza;->zziqi:Lcom/google/android/gms/internal/ads/zzent$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 6
    sget-object p3, Lcom/google/android/gms/internal/ads/zzenv;->zzdv:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_7e

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_11
    if-nez p2, :cond_14

    goto :goto_15

    :cond_14
    const/4 p3, 0x1

    :goto_15
    int-to-byte p1, p3

    .line 24
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzent$zza;->zziqh:B

    return-object v1

    .line 23
    :pswitch_19
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzent$zza;->zziqh:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zza;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_39

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzent$zza;

    monitor-enter p2

    .line 17
    :try_start_27
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zza;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_34

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzent$zza;->zziqi:Lcom/google/android/gms/internal/ads/zzent$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzent$zza;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 21
    :cond_34
    monitor-exit p2

    goto :goto_39

    :catchall_36
    move-exception p1

    monitor-exit p2
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_36

    throw p1

    :cond_39
    :goto_39
    return-object p1

    .line 13
    :pswitch_3a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zza;->zziqi:Lcom/google/android/gms/internal/ads/zzent$zza;

    return-object p1

    :pswitch_3d
    const/16 p1, 0x8

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdw"

    aput-object p2, p1, p3

    const-string p2, "zziqb"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zziqc"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zziqd"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zziqe"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zziqf"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zziqg"

    aput-object p3, p1, p2

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzent$zza;->zziqi:Lcom/google/android/gms/internal/ads/zzent$zza;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0001\u0001\u150c\u0000\u0002\u1009\u0001\u0003\u100a\u0002\u0004\u100a\u0003\u0005\u1007\u0004\u0006\u1007\u0005"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzent$zza;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_72
    new-instance p1, Lcom/google/android/gms/internal/ads/zzent$zza$zzb;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzent$zza$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzenv;)V

    return-object p1

    .line 7
    :pswitch_78
    new-instance p1, Lcom/google/android/gms/internal/ads/zzent$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzent$zza;-><init>()V

    return-object p1

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_78
        :pswitch_72
        :pswitch_3d
        :pswitch_3a
        :pswitch_20
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method
