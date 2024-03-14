.class public final Lcom/google/android/gms/internal/ads/zzent$zzb$zze;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzent$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzent$zzb$zze$zza;,
        Lcom/google/android/gms/internal/ads/zzent$zzb$zze$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzent$zzb$zze;",
        "Lcom/google/android/gms/internal/ads/zzent$zzb$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzent$zzb$zze;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzisa:Lcom/google/android/gms/internal/ads/zzent$zzb$zze;


# instance fields
.field private zzdw:I

.field private zziqh:B

.field private zzirp:Lcom/google/android/gms/internal/ads/zzekk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekk<",
            "Lcom/google/android/gms/internal/ads/zzent$zzb$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzirq:Lcom/google/android/gms/internal/ads/zzeip;

.field private zzirr:Lcom/google/android/gms/internal/ads/zzeip;

.field private zzirs:I

.field private zziry:Lcom/google/android/gms/internal/ads/zzent$zzb$zze$zzb;

.field private zzirz:Lcom/google/android/gms/internal/ads/zzeip;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zzisa:Lcom/google/android/gms/internal/ads/zzent$zzb$zze;

    .line 31
    const-class v1, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zziqh:B

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zzbgk()Lcom/google/android/gms/internal/ads/zzekk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zzirp:Lcom/google/android/gms/internal/ads/zzekk;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zzirq:Lcom/google/android/gms/internal/ads/zzeip;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zzirr:Lcom/google/android/gms/internal/ads/zzeip;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zzirz:Lcom/google/android/gms/internal/ads/zzeip;

    return-void
.end method

.method static synthetic zzbjv()Lcom/google/android/gms/internal/ads/zzent$zzb$zze;
    .registers 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zzisa:Lcom/google/android/gms/internal/ads/zzent$zzb$zze;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/ads/zzenv;->zzdv:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_7c

    .line 27
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

    .line 25
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zziqh:B

    return-object v1

    .line 24
    :pswitch_19
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zziqh:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_39

    .line 17
    const-class p2, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;

    monitor-enter p2

    .line 18
    :try_start_27
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_34

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zzisa:Lcom/google/android/gms/internal/ads/zzent$zzb$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 22
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

    .line 14
    :pswitch_3a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zzisa:Lcom/google/android/gms/internal/ads/zzent$zzb$zze;

    return-object p1

    :pswitch_3d
    const/16 p1, 0x8

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdw"

    aput-object p2, p1, p3

    const-string p2, "zziry"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzirp"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/android/gms/internal/ads/zzent$zzb$zzc;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzirq"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzirr"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzirs"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzirz"

    aput-object p3, p1, p2

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zzisa:Lcom/google/android/gms/internal/ads/zzent$zzb$zze;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003\u0006\u100a\u0004"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_70
    new-instance p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zze$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zze$zza;-><init>(Lcom/google/android/gms/internal/ads/zzenv;)V

    return-object p1

    .line 9
    :pswitch_76
    new-instance p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zze;-><init>()V

    return-object p1

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_76
        :pswitch_70
        :pswitch_3d
        :pswitch_3a
        :pswitch_20
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method
