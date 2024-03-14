.class public final Lcom/google/android/gms/internal/measurement/zzbw$zzf;
.super Lcom/google/android/gms/internal/measurement/zzfi;
.source "com.google.android.gms:play-services-measurement@@17.4.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzgv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzbw$zzf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzfi<",
        "Lcom/google/android/gms/internal/measurement/zzbw$zzf;",
        "Lcom/google/android/gms/internal/measurement/zzbw$zzf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzgv;"
    }
.end annotation


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzbw$zzf;

.field private static volatile zze:Lcom/google/android/gms/internal/measurement/zzhc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhc<",
            "Lcom/google/android/gms/internal/measurement/zzbw$zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lcom/google/android/gms/internal/measurement/zzfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfq<",
            "Lcom/google/android/gms/internal/measurement/zzbw$zzg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbw$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zzf;-><init>()V

    .line 37
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzbw$zzf;

    .line 38
    const-class v1, Lcom/google/android/gms/internal/measurement/zzbw$zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zzbq()Lcom/google/android/gms/internal/measurement/zzfq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzfq;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbw$zzf;Lcom/google/android/gms/internal/measurement/zzbw$zzg;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg;)V
    .registers 4

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzfq;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzfq;->zza()Z

    move-result v1

    if-nez v1, :cond_11

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(Lcom/google/android/gms/internal/measurement/zzfq;)Lcom/google/android/gms/internal/measurement/zzfq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzfq;

    .line 12
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfq;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzbw$zzf$zza;
    .registers 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzbw$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbk()Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzf$zza;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/measurement/zzbw$zzf;
    .registers 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzbw$zzf;

    return-object v0
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzbw$zzg;
    .registers 3

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzfq;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzfq;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbx;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 31
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zze:Lcom/google/android/gms/internal/measurement/zzhc;

    if-nez p1, :cond_2f

    .line 24
    const-class p2, Lcom/google/android/gms/internal/measurement/zzbw$zzf;

    monitor-enter p2

    .line 25
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zze:Lcom/google/android/gms/internal/measurement/zzhc;

    if-nez p1, :cond_2a

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfi$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzbw$zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzfi$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfi;)V

    .line 28
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zze:Lcom/google/android/gms/internal/measurement/zzhc;

    .line 29
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

    .line 21
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzbw$zzf;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    .line 18
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-class p2, Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    aput-object p2, p1, p3

    .line 20
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzbw$zzf;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zza(Lcom/google/android/gms/internal/measurement/zzgt;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbw$zzf$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbw$zzf$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzbx;)V

    return-object p1

    .line 16
    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbw$zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzf;-><init>()V

    return-object p1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_48
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zza()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbw$zzg;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzfq;

    return-object v0
.end method
