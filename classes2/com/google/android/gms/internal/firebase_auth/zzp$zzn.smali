.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;
.super Lcom/google/android/gms/internal/firebase_auth/zzif;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;,
        Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# static fields
.field private static final zzab:Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

.field private static volatile zzac:Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzu:Lcom/google/android/gms/internal/firebase_auth/zzil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzil<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/firebase_auth/zzv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaa:Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zza;

.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/gms/internal/firebase_auth/zzio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzio<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Ljava/lang/String;

.field private zzk:Z

.field private zzl:Z

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;

.field private zzo:Lcom/google/android/gms/internal/firebase_auth/zzkw;

.field private zzp:Z

.field private zzq:Ljava/lang/String;

.field private zzr:J

.field private zzs:Ljava/lang/String;

.field private zzt:Lcom/google/android/gms/internal/firebase_auth/zzim;

.field private zzv:Z

.field private zzw:Lcom/google/android/gms/internal/firebase_auth/zzio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzio<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzx:J

.field private zzy:J

.field private zzz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 104
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzu:Lcom/google/android/gms/internal/firebase_auth/zzil;

    .line 105
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;-><init>()V

    .line 106
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzab:Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    .line 107
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zze:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzf:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzg:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzh:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzac()Lcom/google/android/gms/internal/firebase_auth/zzio;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzio;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzj:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzm:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzn:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzq:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzs:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzab()Lcom/google/android/gms/internal/firebase_auth/zzim;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzt:Lcom/google/android/gms/internal/firebase_auth/zzim;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzac()Lcom/google/android/gms/internal/firebase_auth/zzio;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzw:Lcom/google/android/gms/internal/firebase_auth/zzio;

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzz:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;
    .registers 1

    .line 72
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzab:Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzz()Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/Iterable;)V
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zza(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zza(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Z)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zza(Z)V

    return-void
.end method

.method private final zza(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/firebase_auth/zzv;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzt:Lcom/google/android/gms/internal/firebase_auth/zzim;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzim;->zza()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzt:Lcom/google/android/gms/internal/firebase_auth/zzim;

    .line 45
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzim;->size()I

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0xa

    goto :goto_15

    :cond_13
    shl-int/lit8 v1, v1, 0x1

    .line 48
    :goto_15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzim;->zzb(I)Lcom/google/android/gms/internal/firebase_auth/zzim;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzt:Lcom/google/android/gms/internal/firebase_auth/zzim;

    .line 50
    :cond_1b
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzt:Lcom/google/android/gms/internal/firebase_auth/zzim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzv;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzim;->zzd(I)V

    goto :goto_1f

    :cond_35
    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .registers 3

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzd:Ljava/lang/String;

    return-void
.end method

.method private final zza(Z)V
    .registers 4

    .line 54
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    .line 55
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzv:Z

    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;
    .registers 1

    .line 93
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzab:Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/Iterable;)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzb(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/String;)V
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzw:Lcom/google/android/gms/internal/firebase_auth/zzio;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzio;->zza()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzw:Lcom/google/android/gms/internal/firebase_auth/zzio;

    .line 61
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzio;->size()I

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0xa

    goto :goto_15

    :cond_13
    shl-int/lit8 v1, v1, 0x1

    .line 64
    :goto_15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzio;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzio;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzw:Lcom/google/android/gms/internal/firebase_auth/zzio;

    .line 66
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzw:Lcom/google/android/gms/internal/firebase_auth/zzio;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzgn;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;)V
    .registers 3

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/String;)V
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method private final zzc(Ljava/lang/String;)V
    .registers 3

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/String;)V
    .registers 2

    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method private final zzd(Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zze(Ljava/lang/String;)V

    return-void
.end method

.method private final zze(Ljava/lang/String;)V
    .registers 3

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/String;)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzf(Ljava/lang/String;)V

    return-void
.end method

.method private final zzf(Ljava/lang/String;)V
    .registers 3

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzs:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;Ljava/lang/String;)V
    .registers 2

    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzg(Ljava/lang/String;)V

    return-void
.end method

.method private final zzg(Ljava/lang/String;)V
    .registers 4

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzc:I

    .line 70
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 73
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzo;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_dc

    .line 92
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 90
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 81
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzac:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2f

    .line 83
    const-class p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    monitor-enter p2

    .line 84
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzac:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2a

    .line 86
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzab:Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    .line 87
    sput-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzac:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    .line 88
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

    .line 80
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzab:Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    return-object p1

    :pswitch_33
    const/16 p1, 0x19

    .line 76
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

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzij;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "zzy"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzz"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "zzaa"

    aput-object p3, p1, p2

    .line 79
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zzab:Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    const-string p3, "\u0001\u0017\u0000\u0001\u0002\u001c\u0017\u0000\u0003\u0000\u0002\u1008\u0000\u0003\u1008\u0001\u0004\u1008\u0002\u0005\u1008\u0003\u0006\u1008\u0004\u0007\u001a\u0008\u1008\u0005\t\u1007\u0006\n\u1007\u0007\u000b\u1008\u0008\u000c\u1008\t\r\u1009\n\u000e\u1007\u000b\u000f\u1008\u000c\u0010\u1002\r\u0011\u1008\u000e\u0012\u001e\u0013\u1007\u000f\u0014\u001a\u0015\u1002\u0010\u0016\u1002\u0011\u0019\u1008\u0012\u001c\u1009\u0013"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 75
    :pswitch_cf
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V

    return-object p1

    .line 74
    :pswitch_d5
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;-><init>()V

    return-object p1

    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_d5
        :pswitch_cf
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
