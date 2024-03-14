.class public final Lcom/google/android/gms/internal/measurement/zzbo$zza;
.super Lcom/google/android/gms/internal/measurement/zzfi;
.source "com.google.android.gms:play-services-measurement@@17.4.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzgv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzfi<",
        "Lcom/google/android/gms/internal/measurement/zzbo$zza;",
        "Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzgv;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzbo$zza;

.field private static volatile zzj:Lcom/google/android/gms/internal/measurement/zzhc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhc<",
            "Lcom/google/android/gms/internal/measurement/zzbo$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/zzfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfq<",
            "Lcom/google/android/gms/internal/measurement/zzbo$zze;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/measurement/zzfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfq<",
            "Lcom/google/android/gms/internal/measurement/zzbo$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Z

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbo$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbo$zza;-><init>()V

    .line 52
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbo$zza;

    .line 53
    const-class v1, Lcom/google/android/gms/internal/measurement/zzbo$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzbq()Lcom/google/android/gms/internal/measurement/zzfq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfq;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzbq()Lcom/google/android/gms/internal/measurement/zzfq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfq;

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/measurement/zzbo$zzb;)V
    .registers 5

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfq;

    .line 24
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzfq;->zza()Z

    move-result v1

    if-nez v1, :cond_11

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(Lcom/google/android/gms/internal/measurement/zzfq;)Lcom/google/android/gms/internal/measurement/zzfq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfq;

    .line 27
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfq;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/measurement/zzbo$zze;)V
    .registers 5

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfq;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzfq;->zza()Z

    move-result v1

    if-nez v1, :cond_11

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(Lcom/google/android/gms/internal/measurement/zzfq;)Lcom/google/android/gms/internal/measurement/zzfq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfq;

    .line 16
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfq;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbo$zza;ILcom/google/android/gms/internal/measurement/zzbo$zzb;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbo$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbo$zza;ILcom/google/android/gms/internal/measurement/zzbo$zze;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbo$zze;)V

    return-void
.end method

.method static synthetic zzg()Lcom/google/android/gms/internal/measurement/zzbo$zza;
    .registers 1

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbo$zza;

    return-object v0
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzbo$zze;
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfq;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzbo$zze;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 29
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbp;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_74

    .line 47
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 45
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzj:Lcom/google/android/gms/internal/measurement/zzhc;

    if-nez p1, :cond_2f

    .line 38
    const-class p2, Lcom/google/android/gms/internal/measurement/zzbo$zza;

    monitor-enter p2

    .line 39
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzj:Lcom/google/android/gms/internal/measurement/zzhc;

    if-nez p1, :cond_2a

    .line 41
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfi$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbo$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzfi$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfi;)V

    .line 42
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzj:Lcom/google/android/gms/internal/measurement/zzhc;

    .line 43
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

    .line 35
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbo$zza;

    return-object p1

    :pswitch_33
    const/16 p1, 0x8

    .line 32
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/android/gms/internal/measurement/zzbo$zze;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzh"

    aput-object p3, p1, p2

    .line 34
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbo$zza;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1007\u0001\u0005\u1007\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgt;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_67
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbo$zza$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzbp;)V

    return-object p1

    .line 30
    :pswitch_6d
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbo$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zza;-><init>()V

    return-object p1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_67
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zza()Z
    .registers 3

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .registers 2

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzd:I

    return v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzbo$zzb;
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfq;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    return-object p1
.end method

.method public final zzc()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbo$zze;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfq;

    return-object v0
.end method

.method public final zzd()I
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzfq;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbo$zzb;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfq;

    return-object v0
.end method

.method public final zzf()I
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzfq;->size()I

    move-result v0

    return v0
.end method
