.class public final Lcom/google/android/gms/internal/firebase_auth/zzau;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase_auth/zzaf;

.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/firebase_auth/zzba;

.field private final zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzba;)V
    .registers 5

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzaj;->zza:Lcom/google/android/gms/internal/firebase_auth/zzaj;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 3
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/firebase_auth/zzau;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzba;ZLcom/google/android/gms/internal/firebase_auth/zzaf;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzba;ZLcom/google/android/gms/internal/firebase_auth/zzaf;I)V
    .registers 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzau;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzba;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzau;->zzb:Z

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzau;->zza:Lcom/google/android/gms/internal/firebase_auth/zzaf;

    const p1, 0x7fffffff

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzau;->zzd:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzau;)Lcom/google/android/gms/internal/firebase_auth/zzaf;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_auth/zzau;->zza:Lcom/google/android/gms/internal/firebase_auth/zzaf;

    return-object p0
.end method

.method public static zza(C)Lcom/google/android/gms/internal/firebase_auth/zzau;
    .registers 3

    .line 11
    new-instance p0, Lcom/google/android/gms/internal/firebase_auth/zzah;

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzah;-><init>(C)V

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzav;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzau;

    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzax;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase_auth/zzax;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzaf;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzau;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzba;)V

    return-object v0
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzau;
    .registers 4

    .line 16
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzar;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzal;

    move-result-object p0

    const-string v0, ""

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzal;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/firebase_auth/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzam;->zza()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzau;

    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzaz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase_auth/zzaz;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzal;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzau;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzba;)V

    return-object v0

    .line 21
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "The pattern may not match the empty string: %s"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbd;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_auth/zzau;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/google/android/gms/internal/firebase_auth/zzau;->zzd:I

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/CharSequence;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzav;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzau;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzba;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzba;->zza(Lcom/google/android/gms/internal/firebase_auth/zzau;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 31
    :cond_1e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
