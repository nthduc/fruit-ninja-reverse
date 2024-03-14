.class public final Lcom/google/android/gms/drive/query/internal/zzk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/query/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/drive/query/internal/zzj<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private zzmm:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/drive/query/Filter;)Z
    .registers 2
    .param p0    # Lcom/google/android/gms/drive/query/Filter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_4
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzk;-><init>()V

    invoke-interface {p0, v0}, Lcom/google/android/gms/drive/query/Filter;->zza(Lcom/google/android/gms/drive/query/internal/zzj;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/drive/metadata/zzb;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/drive/query/internal/zzx;Ljava/util/List;)Ljava/lang/Object;
    .registers 3

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic zzbj()Ljava/lang/Object;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final synthetic zzbk()Ljava/lang/Object;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic zze(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .registers 2

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic zzi(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    .line 13
    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object p1
.end method
