.class final Lcom/google/android/gms/internal/firebase_auth/zzlf$zza;
.super Lcom/google/android/gms/internal/firebase_auth/zzlf$zzc;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzlf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzlf$zzc;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;J)B
    .registers 5

    .line 3
    sget-boolean v0, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza:Z

    if-eqz v0, :cond_9

    .line 4
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzg(Ljava/lang/Object;J)B

    move-result p1

    return p1

    .line 5
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzh(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public final zza(Ljava/lang/Object;JB)V
    .registers 6

    .line 6
    sget-boolean v0, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza:Z

    if-eqz v0, :cond_8

    .line 7
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JB)V

    return-void

    .line 8
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JD)V
    .registers 12

    .line 21
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf$zzc;->zza(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JF)V
    .registers 5

    .line 18
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase_auth/zzlf$zzc;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JZ)V
    .registers 6

    .line 13
    sget-boolean v0, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza:Z

    if-eqz v0, :cond_8

    .line 14
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;JZ)V

    return-void

    .line 15
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzc(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;J)Z
    .registers 5

    .line 10
    sget-boolean v0, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza:Z

    if-eqz v0, :cond_9

    .line 11
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzi(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 12
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzj(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final zzc(Ljava/lang/Object;J)F
    .registers 4

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzlf$zzc;->zze(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final zzd(Ljava/lang/Object;J)D
    .registers 4

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzlf$zzc;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method
