.class abstract Lcom/google/android/gms/internal/firebase_auth/zzbb;
.super Lcom/google/android/gms/internal/firebase_auth/zzae;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzae<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final zza:Ljava/lang/CharSequence;

.field private final zzb:Lcom/google/android/gms/internal/firebase_auth/zzaf;

.field private final zzc:Z

.field private zzd:I

.field private zze:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzau;Ljava/lang/CharSequence;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzae;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzd:I

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzau;->zza(Lcom/google/android/gms/internal/firebase_auth/zzau;)Lcom/google/android/gms/internal/firebase_auth/zzaf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzaf;

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzc:Z

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzau;->zzb(Lcom/google/android/gms/internal/firebase_auth/zzau;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zze:I

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zza:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method abstract zza(I)I
.end method

.method protected final synthetic zza()Ljava/lang/Object;
    .registers 7

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzd:I

    .line 12
    :cond_2
    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_92

    .line 14
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zza(I)I

    move-result v1

    if-ne v1, v2, :cond_16

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zza:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 17
    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzd:I

    goto :goto_1c

    .line 19
    :cond_16
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzb(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzd:I

    .line 20
    :goto_1c
    iget v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzd:I

    if-ne v3, v0, :cond_31

    add-int/lit8 v3, v3, 0x1

    .line 21
    iput v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzd:I

    .line 22
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzd:I

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zza:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v1, v3, :cond_2

    .line 23
    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzd:I

    goto :goto_2

    :cond_31
    :goto_31
    if-ge v0, v1, :cond_44

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzaf;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zza:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzaf;->zza(C)Z

    move-result v3

    if-eqz v3, :cond_44

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_44
    :goto_44
    if-le v1, v0, :cond_59

    .line 26
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzaf;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zza:Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzaf;->zza(C)Z

    move-result v3

    if-eqz v3, :cond_59

    add-int/lit8 v1, v1, -0x1

    goto :goto_44

    .line 28
    :cond_59
    iget-boolean v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzc:Z

    if-eqz v3, :cond_62

    if-ne v0, v1, :cond_62

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzd:I

    goto :goto_2

    .line 31
    :cond_62
    iget v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zze:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_84

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zza:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 33
    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzd:I

    :goto_6f
    if-le v1, v0, :cond_87

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzaf;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zza:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzaf;->zza(C)Z

    move-result v2

    if-eqz v2, :cond_87

    add-int/lit8 v1, v1, -0x1

    goto :goto_6f

    :cond_84
    sub-int/2addr v3, v4

    .line 36
    iput v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zze:I

    .line 37
    :cond_87
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->zza:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_92
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzae;->zzb()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract zzb(I)I
.end method
