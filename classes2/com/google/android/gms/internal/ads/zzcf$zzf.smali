.class public final Lcom/google/android/gms/internal/ads/zzcf$zzf;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-gass@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzcf$zzf;",
        "Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzcf$zzf;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmh:Lcom/google/android/gms/internal/ads/zzcf$zzf;


# instance fields
.field private zzdw:I

.field private zzhv:I

.field private zzhw:I

.field private zzlh:Lcom/google/android/gms/internal/ads/zzeip;

.field private zzmg:Lcom/google/android/gms/internal/ads/zzekk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekk<",
            "Lcom/google/android/gms/internal/ads/zzeip;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcf$zzf;-><init>()V

    .line 49
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmh:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    .line 50
    const-class v1, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzbgk()Lcom/google/android/gms/internal/ads/zzekk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmg:Lcom/google/android/gms/internal/ads/zzekk;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzlh:Lcom/google/android/gms/internal/ads/zzeip;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzhw:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzhv:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcf$zzf;Lcom/google/android/gms/internal/ads/zzcm;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zza(Lcom/google/android/gms/internal/ads/zzcm;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcf$zzf;Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzi(Lcom/google/android/gms/internal/ads/zzeip;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzcm;)V
    .registers 2

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcm;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzhv:I

    .line 20
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzdw:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzdw:I

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcf$zzf;Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzf(Lcom/google/android/gms/internal/ads/zzeip;)V

    return-void
.end method

.method public static zzbl()Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;
    .registers 1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmh:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    return-object v0
.end method

.method static synthetic zzbm()Lcom/google/android/gms/internal/ads/zzcf$zzf;
    .registers 1

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmh:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    return-object v0
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 3

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzdw:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzdw:I

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzlh:Lcom/google/android/gms/internal/ads/zzeip;

    return-void
.end method

.method private final zzi(Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 4

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmg:Lcom/google/android/gms/internal/ads/zzekk;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzekk;->zzbeb()Z

    move-result v1

    if-nez v1, :cond_11

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzekk;)Lcom/google/android/gms/internal/ads/zzekk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmg:Lcom/google/android/gms/internal/ads/zzekk;

    .line 13
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmg:Lcom/google/android/gms/internal/ads/zzekk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzekk;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 23
    sget-object p2, Lcom/google/android/gms/internal/ads/zzce;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_72

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 41
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 34
    const-class p2, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    monitor-enter p2

    .line 35
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 37
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmh:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 38
    sput-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 39
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

    .line 31
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmh:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    return-object p1

    :pswitch_33
    const/4 p1, 0x7

    .line 26
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzmg"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzlh"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhw"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcs;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzhv"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcm;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    .line 30
    sget-object p2, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzmh:Lcom/google/android/gms/internal/ads/zzcf$zzf;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u100c\u0001\u0004\u100c\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_65
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;-><init>(Lcom/google/android/gms/internal/ads/zzce;)V

    return-object p1

    .line 24
    :pswitch_6b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;-><init>()V

    return-object p1

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_65
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
