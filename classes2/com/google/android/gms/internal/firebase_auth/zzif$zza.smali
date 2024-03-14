.class public Lcom/google/android/gms/internal/firebase_auth/zzif$zza;
.super Lcom/google/android/gms/internal/firebase_auth/zzgm;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase_auth/zzif$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/firebase_auth/zzgm<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/firebase_auth/zzif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/firebase_auth/zzif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgm;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 3
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzd:I

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_auth/zzif;Lcom/google/android/gms/internal/firebase_auth/zzif;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b_()Z
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(Lcom/google/android/gms/internal/firebase_auth/zzif;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 49
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 50
    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zze:I

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzf()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzif;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzif;)Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    return-object v0
.end method

.method public final synthetic h_()Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzif;

    return-object v0
.end method

.method public final synthetic zza()Lcom/google/android/gms/internal/firebase_auth/zzgm;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    return-object v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzgn;)Lcom/google/android/gms/internal/firebase_auth/zzgm;
    .registers 2

    .line 37
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzif;)Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzif;)Lcom/google/android/gms/internal/firebase_auth/zzif$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 33
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzif;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-object p0
.end method

.method protected zzb()V
    .registers 4

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzd:I

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzif;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    return-void
.end method

.method public zzd()Lcom/google/android/gms/internal/firebase_auth/zzif;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_7

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    return-object v0

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zzc(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase_auth/zzif;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzf()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->b_()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    .line 26
    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzkx;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzkx;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzjn;)V

    .line 27
    throw v1
.end method

.method public synthetic zzf()Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzd()Lcom/google/android/gms/internal/firebase_auth/zzif;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzg()Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zze()Lcom/google/android/gms/internal/firebase_auth/zzif;

    move-result-object v0

    return-object v0
.end method
