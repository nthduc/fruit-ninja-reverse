.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;
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
    name = "zzt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzp$zzt$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzt$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;

.field private static volatile zzj:Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Z

.field private zzg:J

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;-><init>()V

    .line 42
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;

    .line 43
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zze:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase_auth/zzp$zzt$zza;
    .registers 1

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzz()Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;Ljava/lang/String;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zza(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;Z)V
    .registers 2

    const/4 p1, 0x1

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zza(Z)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .registers 3

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzc:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzd:Ljava/lang/String;

    return-void
.end method

.method private final zza(Z)V
    .registers 3

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzc:I

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzf:Z

    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;
    .registers 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;Ljava/lang/String;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;)V
    .registers 3

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzc:I

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzo;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_68

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 34
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2f

    .line 27
    const-class p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;

    monitor-enter p2

    .line 28
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2a

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    .line 31
    sput-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    .line 32
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

    .line 24
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;

    return-object p1

    :pswitch_33
    const/4 p1, 0x6

    .line 21
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

    .line 23
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u1002\u0003\u0005\u1008\u0004"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_5c
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V

    return-object p1

    .line 19
    :pswitch_62
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;-><init>()V

    return-object p1

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_62
        :pswitch_5c
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
