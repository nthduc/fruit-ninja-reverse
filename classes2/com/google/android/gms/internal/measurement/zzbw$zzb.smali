.class public final Lcom/google/android/gms/internal/measurement/zzbw$zzb;
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
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzbw$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzfi<",
        "Lcom/google/android/gms/internal/measurement/zzbw$zzb;",
        "Lcom/google/android/gms/internal/measurement/zzbw$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzgv;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzbw$zzb;

.field private static volatile zzg:Lcom/google/android/gms/internal/measurement/zzhc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhc<",
            "Lcom/google/android/gms/internal/measurement/zzbw$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbw$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zzb;-><init>()V

    .line 37
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbw$zzb;

    .line 38
    const-class v1, Lcom/google/android/gms/internal/measurement/zzbw$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>()V

    return-void
.end method

.method private final zza(I)V
    .registers 3

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzc:I

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzd:I

    return-void
.end method

.method private final zza(J)V
    .registers 4

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzc:I

    .line 11
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zze:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbw$zzb;I)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zza(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbw$zzb;J)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zza(J)V

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzbw$zzb$zza;
    .registers 1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbw$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbk()Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzb$zza;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/measurement/zzbw$zzb;
    .registers 1

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbw$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbx;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 30
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzhc;

    if-nez p1, :cond_2f

    .line 23
    const-class p2, Lcom/google/android/gms/internal/measurement/zzbw$zzb;

    monitor-enter p2

    .line 24
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzhc;

    if-nez p1, :cond_2a

    .line 26
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfi$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbw$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzfi$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfi;)V

    .line 27
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzhc;

    .line 28
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

    .line 20
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbw$zzb;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    .line 17
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 19
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbw$zzb;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1002\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzgt;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbw$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbw$zzb$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzbx;)V

    return-object p1

    .line 15
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbw$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzb;-><init>()V

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

.method public final zza()Z
    .registers 3

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzc:I

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

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzd:I

    return v0
.end method

.method public final zzc()Z
    .registers 2

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()J
    .registers 3

    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zze:J

    return-wide v0
.end method
