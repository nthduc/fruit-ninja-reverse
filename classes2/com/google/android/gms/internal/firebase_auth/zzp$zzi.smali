.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;
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
    name = "zzi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzp$zzi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;

.field private static volatile zzj:Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;-><init>()V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzh:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzd:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zze:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzf:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;",
            ">;"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;

    .line 29
    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzg:I

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzjx;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;
    .registers 1

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzo;->zza:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_6c

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
    iput-byte p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzh:B

    return-object v1

    .line 24
    :pswitch_19
    iget-byte p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzh:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_20
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_39

    .line 17
    const-class p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;

    monitor-enter p2

    .line 18
    :try_start_27
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_34

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzjx;

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
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;

    return-object p1

    :pswitch_3d
    const/4 p1, 0x5

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzc"

    aput-object p2, p1, p3

    const-string p2, "zzd"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0001\u0001\u1508\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_60
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V

    return-object p1

    .line 9
    :pswitch_66
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzi;-><init>()V

    return-object p1

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_66
        :pswitch_60
        :pswitch_3d
        :pswitch_3a
        :pswitch_20
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method
