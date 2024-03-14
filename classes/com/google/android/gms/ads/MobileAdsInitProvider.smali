.class public Lcom/google/android/gms/ads/MobileAdsInitProvider;
.super Landroid/content/ContentProvider;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdkWithMembers;
.end annotation


# instance fields
.field private final zzadl:Lcom/google/android/gms/internal/ads/zzzi;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzadl:Lcom/google/android/gms/internal/ads/zzzi;

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzadl:Lcom/google/android/gms/internal/ads/zzzi;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzi;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzadl:Lcom/google/android/gms/internal/ads/zzzi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzzi;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzadl:Lcom/google/android/gms/internal/ads/zzzi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzi;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzadl:Lcom/google/android/gms/internal/ads/zzzi;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzi;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()Z
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzadl:Lcom/google/android/gms/internal/ads/zzzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzi;->onCreate()Z

    move-result v0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzadl:Lcom/google/android/gms/internal/ads/zzzi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzzi;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->zzadl:Lcom/google/android/gms/internal/ads/zzzi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzzi;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
