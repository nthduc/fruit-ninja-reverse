.class public final Lcom/google/android/gms/games/internal/player/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"


# instance fields
.field public final name:Ljava/lang/String;

.field public final zzcc:Ljava/lang/String;

.field public final zzch:Ljava/lang/String;

.field public final zzdc:Ljava/lang/String;

.field public final zzlz:Ljava/lang/String;

.field public final zzma:Ljava/lang/String;

.field public final zzmb:Ljava/lang/String;

.field public final zzmc:Ljava/lang/String;

.field public final zzmd:Ljava/lang/String;

.field public final zzme:Ljava/lang/String;

.field public final zzmf:Ljava/lang/String;

.field public final zzmg:Ljava/lang/String;

.field public final zzmh:Ljava/lang/String;

.field public final zzmi:Ljava/lang/String;

.field public final zzmj:Ljava/lang/String;

.field public final zzmk:Ljava/lang/String;

.field public final zzml:Ljava/lang/String;

.field public final zzmm:Ljava/lang/String;

.field public final zzmn:Ljava/lang/String;

.field public final zzmo:Ljava/lang/String;

.field private final zzmp:Ljava/lang/String;

.field public final zzmq:Ljava/lang/String;

.field public final zzmr:Ljava/lang/String;

.field public final zzms:Ljava/lang/String;

.field public final zzmt:Ljava/lang/String;

.field public final zzmu:Ljava/lang/String;

.field public final zzmv:Ljava/lang/String;

.field public final zzmw:Ljava/lang/String;

.field public final zzmx:Ljava/lang/String;

.field public final zzmy:Ljava/lang/String;

.field public final zzmz:Ljava/lang/String;

.field public final zzna:Ljava/lang/String;

.field public final zznb:Ljava/lang/String;

.field private final zznc:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zznd:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzne:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zznf:Ljava/lang/String;

.field public final zzng:Ljava/lang/String;

.field public final zznh:Ljava/lang/String;

.field public final zzni:Ljava/lang/String;

.field private final zznj:Ljava/lang/String;

.field public final zznk:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 18

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "next_level"

    const-string v3, "current_level_max_xp"

    const-string v4, "current_level_min_xp"

    const-string v5, "current_level"

    const-string v6, "current_xp_total"

    const-string v7, "played_with_timestamp"

    const-string v8, "is_in_circles"

    const-string v9, "last_updated"

    const-string v10, "profile_hi_res_image_url"

    const-string v11, "profile_hi_res_image_uri"

    const-string v12, "profile_icon_image_url"

    const-string v13, "profile_icon_image_uri"

    const-string v14, "profile_name"

    const-string v15, "external_player_id"

    if-eqz v1, :cond_b4

    .line 3
    iput-object v15, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzlz:Ljava/lang/String;

    .line 4
    iput-object v14, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzma:Ljava/lang/String;

    .line 5
    iput-object v13, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmb:Ljava/lang/String;

    .line 6
    iput-object v12, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmc:Ljava/lang/String;

    .line 7
    iput-object v11, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmd:Ljava/lang/String;

    .line 8
    iput-object v10, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzme:Ljava/lang/String;

    .line 9
    iput-object v9, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmf:Ljava/lang/String;

    .line 10
    iput-object v8, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmg:Ljava/lang/String;

    .line 11
    iput-object v7, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmh:Ljava/lang/String;

    .line 12
    iput-object v6, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmi:Ljava/lang/String;

    .line 13
    iput-object v5, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmj:Ljava/lang/String;

    .line 14
    iput-object v4, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmk:Ljava/lang/String;

    .line 15
    iput-object v3, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzml:Ljava/lang/String;

    .line 16
    iput-object v2, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmm:Ljava/lang/String;

    const-string v1, "next_level_max_xp"

    .line 17
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmn:Ljava/lang/String;

    const-string v1, "last_level_up_timestamp"

    .line 18
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmo:Ljava/lang/String;

    const-string v1, "player_title"

    .line 19
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzcc:Ljava/lang/String;

    const-string v1, "has_all_public_acls"

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmp:Ljava/lang/String;

    const-string v1, "is_profile_visible"

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmq:Ljava/lang/String;

    const-string v1, "most_recent_external_game_id"

    .line 22
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmr:Ljava/lang/String;

    const-string v1, "most_recent_game_name"

    .line 23
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzms:Ljava/lang/String;

    const-string v1, "most_recent_activity_timestamp"

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmt:Ljava/lang/String;

    const-string v1, "most_recent_game_icon_uri"

    .line 25
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmu:Ljava/lang/String;

    const-string v1, "most_recent_game_hi_res_uri"

    .line 26
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmv:Ljava/lang/String;

    const-string v1, "most_recent_game_featured_uri"

    .line 27
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmw:Ljava/lang/String;

    const-string v1, "has_debug_access"

    .line 28
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmx:Ljava/lang/String;

    const-string v1, "gamer_tag"

    .line 29
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzch:Ljava/lang/String;

    const-string v1, "real_name"

    .line 30
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->name:Ljava/lang/String;

    const-string v1, "banner_image_landscape_uri"

    .line 31
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmy:Ljava/lang/String;

    const-string v1, "banner_image_landscape_url"

    .line 32
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmz:Ljava/lang/String;

    const-string v1, "banner_image_portrait_uri"

    .line 33
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzna:Ljava/lang/String;

    const-string v1, "banner_image_portrait_url"

    .line 34
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznb:Ljava/lang/String;

    const-string v1, "gamer_friend_status"

    .line 35
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznc:Ljava/lang/String;

    const-string v1, "gamer_friend_update_timestamp"

    .line 36
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznd:Ljava/lang/String;

    const-string v1, "is_muted"

    .line 37
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzne:Ljava/lang/String;

    const-string v1, "total_unlocked_achievements"

    .line 38
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznf:Ljava/lang/String;

    .line 39
    sget-object v1, Lcom/google/android/gms/games/internal/zzd;->zzgp:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzng:Ljava/lang/String;

    .line 40
    sget-object v1, Lcom/google/android/gms/games/internal/zzd;->zzgq:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznh:Ljava/lang/String;

    .line 41
    sget-object v1, Lcom/google/android/gms/games/internal/zzd;->zzgr:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzni:Ljava/lang/String;

    const-string v1, "profile_creation_timestamp"

    .line 42
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznj:Ljava/lang/String;

    .line 43
    sget-object v1, Lcom/google/android/gms/games/internal/zzd;->zzgs:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzdc:Ljava/lang/String;

    const-string v1, "friends_list_visibility"

    goto/16 :goto_3f4

    .line 45
    :cond_b4
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 p1, v2

    const-string v2, "null"

    if-eqz v1, :cond_c3

    invoke-virtual {v2, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c8

    :cond_c3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_c8
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzlz:Ljava/lang/String;

    .line 46
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d5

    invoke-virtual {v2, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_da

    :cond_d5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_da
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzma:Ljava/lang/String;

    .line 47
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e7

    invoke-virtual {v2, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ec

    :cond_e7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_ec
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmb:Ljava/lang/String;

    .line 48
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_f9

    invoke-virtual {v2, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_fe

    :cond_f9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_fe
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmc:Ljava/lang/String;

    .line 49
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10b

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_110

    :cond_10b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_110
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmd:Ljava/lang/String;

    .line 50
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11d

    invoke-virtual {v2, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_122

    :cond_11d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_122
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzme:Ljava/lang/String;

    .line 51
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_12f

    invoke-virtual {v2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_134

    :cond_12f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_134
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmf:Ljava/lang/String;

    .line 52
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_141

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_146

    :cond_141
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_146
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmg:Ljava/lang/String;

    .line 53
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_153

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_158

    :cond_153
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_158
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmh:Ljava/lang/String;

    .line 54
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_165

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_16a

    :cond_165
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16a
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmi:Ljava/lang/String;

    .line 55
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_177

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_17c

    :cond_177
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_17c
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmj:Ljava/lang/String;

    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_189

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_18e

    :cond_189
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_18e
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmk:Ljava/lang/String;

    .line 57
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_19b

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a0

    :cond_19b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1a0
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzml:Ljava/lang/String;

    .line 58
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1af

    move-object/from16 v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b4

    :cond_1af
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1b4
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmm:Ljava/lang/String;

    const-string v1, "next_level_max_xp"

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1c3

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c8

    :cond_1c3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1c8
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmn:Ljava/lang/String;

    const-string v1, "last_level_up_timestamp"

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1d7

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1dc

    :cond_1d7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1dc
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmo:Ljava/lang/String;

    const-string v1, "player_title"

    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1eb

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f0

    :cond_1eb
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1f0
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzcc:Ljava/lang/String;

    const-string v1, "has_all_public_acls"

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1ff

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_204

    :cond_1ff
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_204
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmp:Ljava/lang/String;

    const-string v1, "is_profile_visible"

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_213

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_218

    :cond_213
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_218
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmq:Ljava/lang/String;

    const-string v1, "most_recent_external_game_id"

    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_227

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22c

    :cond_227
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_22c
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmr:Ljava/lang/String;

    const-string v1, "most_recent_game_name"

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_23b

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_240

    :cond_23b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_240
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzms:Ljava/lang/String;

    const-string v1, "most_recent_activity_timestamp"

    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_24f

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_254

    :cond_24f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_254
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmt:Ljava/lang/String;

    const-string v1, "most_recent_game_icon_uri"

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_263

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_268

    :cond_263
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_268
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmu:Ljava/lang/String;

    const-string v1, "most_recent_game_hi_res_uri"

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_277

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_27c

    :cond_277
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_27c
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmv:Ljava/lang/String;

    const-string v1, "most_recent_game_featured_uri"

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_28b

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_290

    :cond_28b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_290
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmw:Ljava/lang/String;

    const-string v1, "has_debug_access"

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_29f

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2a4

    :cond_29f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2a4
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmx:Ljava/lang/String;

    const-string v1, "gamer_tag"

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2b3

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b8

    :cond_2b3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2b8
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzch:Ljava/lang/String;

    const-string v1, "real_name"

    .line 72
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2c7

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2cc

    :cond_2c7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2cc
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->name:Ljava/lang/String;

    const-string v1, "banner_image_landscape_uri"

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2db

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e0

    :cond_2db
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2e0
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmy:Ljava/lang/String;

    const-string v1, "banner_image_landscape_url"

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2ef

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2f4

    :cond_2ef
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2f4
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmz:Ljava/lang/String;

    const-string v1, "banner_image_portrait_uri"

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_303

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_308

    :cond_303
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_308
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzna:Ljava/lang/String;

    const-string v1, "banner_image_portrait_url"

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_317

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_31c

    :cond_317
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_31c
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznb:Ljava/lang/String;

    const-string v1, "gamer_friend_status"

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_32b

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_330

    :cond_32b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_330
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznc:Ljava/lang/String;

    const-string v1, "gamer_friend_update_timestamp"

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_33f

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_344

    :cond_33f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_344
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznd:Ljava/lang/String;

    const-string v1, "is_muted"

    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_353

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_358

    :cond_353
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_358
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzne:Ljava/lang/String;

    const-string v1, "total_unlocked_achievements"

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_367

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_36c

    :cond_367
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_36c
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznf:Ljava/lang/String;

    .line 81
    sget-object v1, Lcom/google/android/gms/games/internal/zzd;->zzgp:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_37f

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_384

    :cond_37f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_384
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzng:Ljava/lang/String;

    .line 82
    sget-object v1, Lcom/google/android/gms/games/internal/zzd;->zzgq:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_397

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_39c

    :cond_397
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_39c
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznh:Ljava/lang/String;

    .line 83
    sget-object v1, Lcom/google/android/gms/games/internal/zzd;->zzgr:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3af

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b4

    :cond_3af
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3b4
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzni:Ljava/lang/String;

    const-string v1, "profile_creation_timestamp"

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3c3

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3c8

    :cond_3c3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3c8
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznj:Ljava/lang/String;

    .line 85
    sget-object v1, Lcom/google/android/gms/games/internal/zzd;->zzgs:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3db

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3e0

    :cond_3db
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3e0
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzdc:Ljava/lang/String;

    const-string v1, "friends_list_visibility"

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3ef

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3f4

    :cond_3ef
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3f4
    iput-object v1, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznk:Ljava/lang/String;

    return-void
.end method
