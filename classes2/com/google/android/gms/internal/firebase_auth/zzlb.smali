.class final Lcom/google/android/gms/internal/firebase_auth/zzlb;
.super Lcom/google/android/gms/internal/firebase_auth/zzkz;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
        "Lcom/google/android/gms/internal/firebase_auth/zzky;",
        "Lcom/google/android/gms/internal/firebase_auth/zzky;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzkz;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzky;)V
    .registers 2

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzky;

    return-void
.end method


# virtual methods
.method final synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzky;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 42
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zzc()V

    return-object p1
.end method

.method final synthetic zza(Ljava/lang/Object;II)V
    .registers 4

    .line 63
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    .line 66
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;IJ)V
    .registers 5

    .line 68
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    shl-int/lit8 p2, p2, 0x3

    .line 71
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_auth/zzgv;)V
    .registers 4

    .line 53
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 56
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 48
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    check-cast p3, Lcom/google/android/gms/internal/firebase_auth/zzky;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    .line 51
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zzb(Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void
.end method

.method final bridge synthetic zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 41
    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzky;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzky;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/firebase_auth/zzke;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method final synthetic zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 39
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzky;

    return-object p1
.end method

.method final synthetic zzb(Ljava/lang/Object;IJ)V
    .registers 5

    .line 58
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    .line 61
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zza(Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void
.end method

.method final synthetic zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 26
    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 27
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzky;)V

    return-void
.end method

.method final synthetic zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zza()Lcom/google/android/gms/internal/firebase_auth/zzky;

    move-result-object v1

    if-ne v0, v1, :cond_12

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzky;

    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzlb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzky;)V

    :cond_12
    return-object v0
.end method

.method final synthetic zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zza()Lcom/google/android/gms/internal/firebase_auth/zzky;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzky;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p1

    .line 18
    :cond_f
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zza(Lcom/google/android/gms/internal/firebase_auth/zzky;Lcom/google/android/gms/internal/firebase_auth/zzky;)Lcom/google/android/gms/internal/firebase_auth/zzky;

    move-result-object p1

    return-object p1
.end method

.method final zzd(Ljava/lang/Object;)V
    .registers 2

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zzc()V

    return-void
.end method

.method final synthetic zze(Ljava/lang/Object;)I
    .registers 2

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zzd()I

    move-result p1

    return p1
.end method

.method final synthetic zzf(Ljava/lang/Object;)I
    .registers 2

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzky;->zze()I

    move-result p1

    return p1
.end method
