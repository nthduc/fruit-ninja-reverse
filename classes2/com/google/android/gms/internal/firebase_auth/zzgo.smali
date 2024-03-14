.class public abstract Lcom/google/android/gms/internal/firebase_auth/zzgo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/gms/internal/firebase_auth/zzjn;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase_auth/zzhs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzhs;->zza()Lcom/google/android/gms/internal/firebase_auth/zzhs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgo;->zza:Lcom/google/android/gms/internal/firebase_auth/zzhs;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase_auth/zzhs;)Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhs;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_auth/zzin;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzii;->zzb:[B

    .line 6
    array-length v1, p1

    .line 7
    invoke-static {p1, v0, v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhh;->zza([BIIZ)Lcom/google/android/gms/internal/firebase_auth/zzhh;

    move-result-object p1

    goto :goto_14

    .line 9
    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzhi;

    const/16 v2, 0x1000

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzhi;-><init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/firebase_auth/zzhg;)V

    move-object p1, v1

    .line 11
    :goto_14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzgo;->zza(Lcom/google/android/gms/internal/firebase_auth/zzhh;Lcom/google/android/gms/internal/firebase_auth/zzhs;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 12
    :try_start_1a
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhh;->zza(I)V
    :try_end_1d
    .catch Lcom/google/android/gms/internal/firebase_auth/zzin; {:try_start_1a .. :try_end_1d} :catch_1e

    return-object p2

    :catch_1e
    move-exception p1

    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final synthetic zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase_auth/zzhs;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_auth/zzin;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzgo;->zzb(Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase_auth/zzhs;)Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_auth/zzjn;->b_()Z

    move-result p2

    if-nez p2, :cond_39

    .line 20
    instance-of p2, p1, Lcom/google/android/gms/internal/firebase_auth/zzgn;

    if-nez p2, :cond_23

    .line 24
    instance-of p2, p1, Lcom/google/android/gms/internal/firebase_auth/zzgp;

    if-eqz p2, :cond_1d

    .line 25
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzgp;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzkx;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkx;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzjn;)V

    goto :goto_2b

    .line 28
    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzkx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkx;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzjn;)V

    goto :goto_2b

    .line 21
    :cond_23
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzgn;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzkx;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkx;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzjn;)V

    .line 30
    :goto_2b
    new-instance p2, Lcom/google/android/gms/internal/firebase_auth/zzin;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzkx;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzin;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p1

    throw p1

    :cond_39
    return-object p1
.end method
