.class public final Lcom/google/android/gms/measurement/internal/zzev;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"


# instance fields
.field private final zza:I

.field private final zzb:Z

.field private final zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzet;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzet;IZZ)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzd:Lcom/google/android/gms/measurement/internal/zzet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzev;->zza:I

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z

    .line 4
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .registers 10

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzd:Lcom/google/android/gms/measurement/internal/zzet;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zza:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzc:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzd:Lcom/google/android/gms/measurement/internal/zzet;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zza:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzc:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzd:Lcom/google/android/gms/measurement/internal/zzet;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zza:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzc:Z

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzd:Lcom/google/android/gms/measurement/internal/zzet;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zza:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzc:Z

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
