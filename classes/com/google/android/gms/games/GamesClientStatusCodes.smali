.class public final Lcom/google/android/gms/games/GamesClientStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;
.source "com.google.android.gms:play-services-games@@20.0.1"


# static fields
.field public static final ACHIEVEMENT_NOT_INCREMENTAL:I = 0x67c2

.field public static final ACHIEVEMENT_UNKNOWN:I = 0x67c1

.field public static final ACHIEVEMENT_UNLOCKED:I = 0x67c3

.field public static final ACHIEVEMENT_UNLOCK_FAILURE:I = 0x67c0

.field public static final APP_MISCONFIGURED:I = 0x678c

.field public static final CONSENT_REQUIRED:I = 0x684f

.field public static final GAME_NOT_FOUND:I = 0x678d

.field public static final INVALID_REAL_TIME_ROOM_ID:I = 0x67ea

.field public static final LICENSE_CHECK_FAILED:I = 0x678b

.field public static final MATCH_ERROR_ALREADY_REMATCHED:I = 0x67e3

.field public static final MATCH_ERROR_INACTIVE_MATCH:I = 0x67df

.field public static final MATCH_ERROR_INVALID_MATCH_RESULTS:I = 0x67e2

.field public static final MATCH_ERROR_INVALID_MATCH_STATE:I = 0x67e0

.field public static final MATCH_ERROR_INVALID_PARTICIPANT_STATE:I = 0x67de

.field public static final MATCH_ERROR_LOCALLY_MODIFIED:I = 0x67e5

.field public static final MATCH_ERROR_OUT_OF_DATE_VERSION:I = 0x67e1

.field public static final MATCH_NOT_FOUND:I = 0x67e4

.field public static final MULTIPLAYER_DISABLED:I = 0x67d7

.field public static final MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED:I = 0x67d4

.field public static final MULTIPLAYER_ERROR_INVALID_MULTIPLAYER_TYPE:I = 0x67d6

.field public static final MULTIPLAYER_ERROR_INVALID_OPERATION:I = 0x67d8

.field public static final MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER:I = 0x67d5

.field public static final NETWORK_ERROR_NO_DATA:I = 0x6788

.field public static final NETWORK_ERROR_OPERATION_FAILED:I = 0x678a

.field public static final OPERATION_IN_FLIGHT:I = 0x67ef

.field public static final PARTICIPANT_NOT_CONNECTED:I = 0x67eb

.field public static final REAL_TIME_CONNECTION_FAILED:I = 0x67e8

.field public static final REAL_TIME_INACTIVE_ROOM:I = 0x67ed

.field public static final REAL_TIME_MESSAGE_SEND_FAILED:I = 0x67e9

.field public static final REAL_TIME_ROOM_NOT_JOINED:I = 0x67ec

.field public static final SNAPSHOT_COMMIT_FAILED:I = 0x67cd

.field public static final SNAPSHOT_CONFLICT_MISSING:I = 0x67d0

.field public static final SNAPSHOT_CONTENTS_UNAVAILABLE:I = 0x67cc

.field public static final SNAPSHOT_CREATION_FAILED:I = 0x67cb

.field public static final SNAPSHOT_FOLDER_UNAVAILABLE:I = 0x67cf

.field public static final SNAPSHOT_NOT_FOUND:I = 0x67ca

.field public static final VIDEO_ALREADY_CAPTURING:I = 0x6801

.field public static final VIDEO_NOT_ACTIVE:I = 0x67fc

.field public static final VIDEO_OUT_OF_DISK_SPACE:I = 0x6802

.field public static final VIDEO_PERMISSION_ERROR:I = 0x67fe

.field public static final VIDEO_STORAGE_ERROR:I = 0x67ff

.field public static final VIDEO_UNEXPECTED_CAPTURE_ERROR:I = 0x6800

.field public static final VIDEO_UNSUPPORTED:I = 0x67fd


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x67ac

    if-eq p0, v0, :cond_109

    const/16 v0, 0x67ad

    if-eq p0, v0, :cond_106

    sparse-switch p0, :sswitch_data_10c

    packed-switch p0, :pswitch_data_182

    packed-switch p0, :pswitch_data_192

    packed-switch p0, :pswitch_data_19c

    packed-switch p0, :pswitch_data_1a8

    packed-switch p0, :pswitch_data_1ba

    packed-switch p0, :pswitch_data_1c8

    packed-switch p0, :pswitch_data_1dc

    packed-switch p0, :pswitch_data_1f0

    .line 82
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_28
    const-string p0, "QUEST_NOT_STARTED"

    return-object p0

    :pswitch_2b
    const-string p0, "QUEST_NO_LONGER_AVAILABLE"

    return-object p0

    :pswitch_2e
    const-string p0, "MILESTONE_CLAIM_FAILED"

    return-object p0

    :pswitch_31
    const-string p0, "MILESTONE_CLAIMED_PREVIOUSLY"

    return-object p0

    :pswitch_34
    const-string p0, "OPERATION_IN_FLIGHT"

    return-object p0

    :pswitch_37
    const-string p0, "REAL_TIME_SERVICE_NOT_CONNECTED"

    return-object p0

    :pswitch_3a
    const-string p0, "REAL_TIME_INACTIVE_ROOM"

    return-object p0

    :pswitch_3d
    const-string p0, "REAL_TIME_ROOM_NOT_JOINED"

    return-object p0

    :pswitch_40
    const-string p0, "PARTICIPANT_NOT_CONNECTED"

    return-object p0

    :pswitch_43
    const-string p0, "INVALID_REAL_TIME_ROOM_ID"

    return-object p0

    :pswitch_46
    const-string p0, "REAL_TIME_MESSAGE_SEND_FAILED"

    return-object p0

    :pswitch_49
    const-string p0, "REAL_TIME_CONNECTION_FAILED"

    return-object p0

    :pswitch_4c
    const-string p0, "MATCH_ERROR_LOCALLY_MODIFIED"

    return-object p0

    :pswitch_4f
    const-string p0, "MATCH_NOT_FOUND"

    return-object p0

    :pswitch_52
    const-string p0, "MATCH_ERROR_ALREADY_REMATCHED"

    return-object p0

    :pswitch_55
    const-string p0, "MATCH_ERROR_INVALID_MATCH_RESULTS"

    return-object p0

    :pswitch_58
    const-string p0, "MATCH_ERROR_OUT_OF_DATE_VERSION"

    return-object p0

    :pswitch_5b
    const-string p0, "MATCH_ERROR_INVALID_MATCH_STATE"

    return-object p0

    :pswitch_5e
    const-string p0, "MATCH_ERROR_INACTIVE_MATCH"

    return-object p0

    :pswitch_61
    const-string p0, "MATCH_ERROR_INVALID_PARTICIPANT_STATE"

    return-object p0

    :pswitch_64
    const-string p0, "MULTIPLAYER_ERROR_INVALID_OPERATION"

    return-object p0

    :pswitch_67
    const-string p0, "MULTIPLAYER_DISABLED"

    return-object p0

    :pswitch_6a
    const-string p0, "MULTIPLAYER_ERROR_INVALID_MULTIPLAYER_TYPE"

    return-object p0

    :pswitch_6d
    const-string p0, "MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER"

    return-object p0

    :pswitch_70
    const-string p0, "MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED"

    return-object p0

    :pswitch_73
    const-string p0, "SNAPSHOT_CONFLICT_MISSING"

    return-object p0

    :pswitch_76
    const-string p0, "SNAPSHOT_FOLDER_UNAVAILABLE"

    return-object p0

    :pswitch_79
    const-string p0, "SNAPSHOT_CONFLICT"

    return-object p0

    :pswitch_7c
    const-string p0, "SNAPSHOT_COMMIT_FAILED"

    return-object p0

    :pswitch_7f
    const-string p0, "SNAPSHOT_CONTENTS_UNAVAILABLE"

    return-object p0

    :pswitch_82
    const-string p0, "SNAPSHOT_CREATION_FAILED"

    return-object p0

    :pswitch_85
    const-string p0, "SNAPSHOT_NOT_FOUND"

    return-object p0

    :pswitch_88
    const-string p0, "ACHIEVEMENT_UNLOCKED"

    return-object p0

    :pswitch_8b
    const-string p0, "ACHIEVEMENT_NOT_INCREMENTAL"

    return-object p0

    :pswitch_8e
    const-string p0, "ACHIEVEMENT_UNKNOWN"

    return-object p0

    :pswitch_91
    const-string p0, "ACHIEVEMENT_UNLOCK_FAILURE"

    return-object p0

    :pswitch_94
    const-string p0, "REQUEST_TOO_MANY_RECIPIENTS"

    return-object p0

    :pswitch_97
    const-string p0, "REQUEST_UPDATE_TOTAL_FAILURE"

    return-object p0

    :pswitch_9a
    const-string p0, "REQUEST_UPDATE_PARTIAL_SUCCESS"

    return-object p0

    :pswitch_9d
    const-string p0, "AUTH_ERROR_ACCOUNT_UNICORN"

    return-object p0

    :pswitch_a0
    const-string p0, "AUTH_ERROR_ACCOUNT_NOT_USABLE"

    return-object p0

    :pswitch_a3
    const-string p0, "AUTH_ERROR_API_ACCESS_DENIED"

    return-object p0

    :pswitch_a6
    const-string p0, "AUTH_ERROR_UNREGISTERED_CLIENT_ID"

    return-object p0

    :pswitch_a9
    const-string p0, "AUTH_ERROR_USER_RECOVERABLE"

    return-object p0

    :pswitch_ac
    const-string p0, "AUTH_ERROR_HARD"

    return-object p0

    :sswitch_af
    const-string p0, "PLAYER_NOT_FOUND"

    return-object p0

    :sswitch_b2
    const-string p0, "CONSENT_REQUIRED"

    return-object p0

    :sswitch_b5
    const-string p0, "CLIENT_HIDDEN"

    return-object p0

    :sswitch_b8
    const-string p0, "CLIENT_EMPTY"

    return-object p0

    :sswitch_bb
    const-string p0, "CLIENT_LOADING"

    return-object p0

    :sswitch_be
    const-string p0, "VIDEO_CAPTURE_OVERLAY_VISIBLE"

    return-object p0

    :sswitch_c1
    const-string p0, "VIDEO_MISSING_OVERLAY_PERMISSION"

    return-object p0

    :sswitch_c4
    const-string p0, "CAPTURE_ALREADY_PAUSED"

    return-object p0

    :sswitch_c7
    const-string p0, "VIDEO_CAPTURE_VIDEO_PERMISSION_REQUIRED"

    return-object p0

    :sswitch_ca
    const-string p0, "VIDEO_RELEASE_TIMEOUT"

    return-object p0

    :sswitch_cd
    const-string p0, "VIDEO_SCREEN_OFF"

    return-object p0

    :sswitch_d0
    const-string p0, "VIDEO_NO_CAMERA"

    return-object p0

    :sswitch_d3
    const-string p0, "VIDEO_NO_MIC"

    return-object p0

    :sswitch_d6
    const-string p0, "VIDEO_OUT_OF_DISK_SPACE"

    return-object p0

    :sswitch_d9
    const-string p0, "VIDEO_ALREADY_CAPTURING"

    return-object p0

    :sswitch_dc
    const-string p0, "VIDEO_UNEXPECTED_CAPTURE_ERROR"

    return-object p0

    :sswitch_df
    const-string p0, "VIDEO_STORAGE_ERROR"

    return-object p0

    :sswitch_e2
    const-string p0, "VIDEO_PERMISSION_ERROR"

    return-object p0

    :sswitch_e5
    const-string p0, "VIDEO_UNSUPPORTED"

    return-object p0

    :sswitch_e8
    const-string p0, "VIDEO_NOT_ACTIVE"

    return-object p0

    :sswitch_eb
    const-string p0, "RESOLVE_STALE_OR_NO_DATA"

    return-object p0

    :sswitch_ee
    const-string p0, "GAME_NOT_FOUND"

    return-object p0

    :sswitch_f1
    const-string p0, "APP_MISCONFIGURED"

    return-object p0

    :sswitch_f4
    const-string p0, "LICENSE_CHECK_FAILED"

    return-object p0

    :sswitch_f7
    const-string p0, "NETWORK_ERROR_OPERATION_FAILED"

    return-object p0

    :sswitch_fa
    const-string p0, "NETWORK_ERROR_OPERATION_DEFERRED"

    return-object p0

    :sswitch_fd
    const-string p0, "NETWORK_ERROR_NO_DATA"

    return-object p0

    :sswitch_100
    const-string p0, "NETWORK_ERROR_STALE_DATA"

    return-object p0

    :sswitch_103
    const-string p0, "CLIENT_RECONNECT_REQUIRED"

    return-object p0

    :cond_106
    const-string p0, "PLAYER_LEVEL_UP"

    return-object p0

    :cond_109
    const-string p0, "PLAYER_OOB_REQUIRED"

    return-object p0

    :sswitch_data_10c
    .sparse-switch
        0x6786 -> :sswitch_103
        0x6787 -> :sswitch_100
        0x6788 -> :sswitch_fd
        0x6789 -> :sswitch_fa
        0x678a -> :sswitch_f7
        0x678b -> :sswitch_f4
        0x678c -> :sswitch_f1
        0x678d -> :sswitch_ee
        0x6798 -> :sswitch_eb
        0x67fc -> :sswitch_e8
        0x67fd -> :sswitch_e5
        0x67fe -> :sswitch_e2
        0x67ff -> :sswitch_df
        0x6800 -> :sswitch_dc
        0x6801 -> :sswitch_d9
        0x6802 -> :sswitch_d6
        0x6803 -> :sswitch_d3
        0x6804 -> :sswitch_d0
        0x6805 -> :sswitch_cd
        0x6806 -> :sswitch_ca
        0x6807 -> :sswitch_c7
        0x6808 -> :sswitch_c4
        0x681a -> :sswitch_c1
        0x681c -> :sswitch_be
        0x684c -> :sswitch_bb
        0x684d -> :sswitch_b8
        0x684e -> :sswitch_b5
        0x684f -> :sswitch_b2
        0x6850 -> :sswitch_af
    .end sparse-switch

    :pswitch_data_182
    .packed-switch 0x67a2
        :pswitch_ac
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
    .end packed-switch

    :pswitch_data_192
    .packed-switch 0x67b6
        :pswitch_9a
        :pswitch_97
        :pswitch_94
    .end packed-switch

    :pswitch_data_19c
    .packed-switch 0x67c0
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
    .end packed-switch

    :pswitch_data_1a8
    .packed-switch 0x67ca
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
    .end packed-switch

    :pswitch_data_1ba
    .packed-switch 0x67d4
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
    .end packed-switch

    :pswitch_data_1c8
    .packed-switch 0x67de
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
    .end packed-switch

    :pswitch_data_1dc
    .packed-switch 0x67e8
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
    .end packed-switch

    :pswitch_data_1f0
    .packed-switch 0x67f2
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
    .end packed-switch
.end method

.method public static zza(I)Lcom/google/android/gms/common/api/Status;
    .registers 3

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-static {p0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static zza(ILandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/Status;
    .registers 4

    .line 4
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-static {p0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static zzb(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_117

    const/4 v0, 0x4

    if-eq p0, v0, :cond_114

    const/4 v0, 0x5

    if-eq p0, v0, :cond_111

    const/4 v0, 0x6

    if-eq p0, v0, :cond_10e

    const/4 v0, 0x7

    if-eq p0, v0, :cond_10b

    const/16 v0, 0x5dc

    if-eq p0, v0, :cond_108

    const/16 v0, 0x5dd

    if-eq p0, v0, :cond_105

    sparse-switch p0, :sswitch_data_120

    packed-switch p0, :pswitch_data_182

    packed-switch p0, :pswitch_data_192

    packed-switch p0, :pswitch_data_19c

    packed-switch p0, :pswitch_data_1a8

    packed-switch p0, :pswitch_data_1ba

    packed-switch p0, :pswitch_data_1c8

    packed-switch p0, :pswitch_data_1dc

    packed-switch p0, :pswitch_data_1f0

    return p0

    :pswitch_39
    const/16 p0, 0x67f5

    return p0

    :pswitch_3c
    const/16 p0, 0x67f4

    return p0

    :pswitch_3f
    const/16 p0, 0x67f3

    return p0

    :pswitch_42
    const/16 p0, 0x67f2

    return p0

    :pswitch_45
    const/16 p0, 0x67ef

    return p0

    :pswitch_48
    const/16 p0, 0x67ee

    return p0

    :pswitch_4b
    const/16 p0, 0x67ed

    return p0

    :pswitch_4e
    const/16 p0, 0x67ec

    return p0

    :pswitch_51
    const/16 p0, 0x67eb

    return p0

    :pswitch_54
    const/16 p0, 0x67ea

    return p0

    :pswitch_57
    const/16 p0, 0x67e9

    return p0

    :pswitch_5a
    const/16 p0, 0x67e8

    return p0

    :pswitch_5d
    const/16 p0, 0x67e5

    return p0

    :pswitch_60
    const/16 p0, 0x67e4

    return p0

    :pswitch_63
    const/16 p0, 0x67e3

    return p0

    :pswitch_66
    const/16 p0, 0x67e2

    return p0

    :pswitch_69
    const/16 p0, 0x67e1

    return p0

    :pswitch_6c
    const/16 p0, 0x67e0

    return p0

    :pswitch_6f
    const/16 p0, 0x67df

    return p0

    :pswitch_72
    const/16 p0, 0x67de

    return p0

    :pswitch_75
    const/16 p0, 0x67d8

    return p0

    :pswitch_78
    const/16 p0, 0x67d7

    return p0

    :pswitch_7b
    const/16 p0, 0x67d6

    return p0

    :pswitch_7e
    const/16 p0, 0x67d5

    return p0

    :pswitch_81
    const/16 p0, 0x67d4

    return p0

    :pswitch_84
    const/16 p0, 0x67d0

    return p0

    :pswitch_87
    const/16 p0, 0x67cf

    return p0

    :pswitch_8a
    const/16 p0, 0x67ce

    return p0

    :pswitch_8d
    const/16 p0, 0x67cd

    return p0

    :pswitch_90
    const/16 p0, 0x67cc

    return p0

    :pswitch_93
    const/16 p0, 0x67cb

    return p0

    :pswitch_96
    const/16 p0, 0x67ca

    return p0

    :pswitch_99
    const/16 p0, 0x67c3

    return p0

    :pswitch_9c
    const/16 p0, 0x67c2

    return p0

    :pswitch_9f
    const/16 p0, 0x67c1

    return p0

    :pswitch_a2
    const/16 p0, 0x67c0

    return p0

    :pswitch_a5
    const/16 p0, 0x67b8

    return p0

    :pswitch_a8
    const/16 p0, 0x67b7

    return p0

    :pswitch_ab
    const/16 p0, 0x67b6

    return p0

    :pswitch_ae
    const/16 p0, 0x67a7

    return p0

    :pswitch_b1
    const/16 p0, 0x67a6

    return p0

    :pswitch_b4
    const/16 p0, 0x67a5

    return p0

    :pswitch_b7
    const/16 p0, 0x67a4

    return p0

    :pswitch_ba
    const/16 p0, 0x67a3

    return p0

    :pswitch_bd
    const/16 p0, 0x67a2

    return p0

    :sswitch_c0
    const/16 p0, 0x6850

    return p0

    :sswitch_c3
    const/16 p0, 0x684f

    return p0

    :sswitch_c6
    const/16 p0, 0x684e

    return p0

    :sswitch_c9
    const/16 p0, 0x684d

    return p0

    :sswitch_cc
    const/16 p0, 0x684c

    return p0

    :sswitch_cf
    const/16 p0, 0x681c

    return p0

    :sswitch_d2
    const/16 p0, 0x681a

    return p0

    :sswitch_d5
    const/16 p0, 0x6808

    return p0

    :sswitch_d8
    const/16 p0, 0x6807

    return p0

    :sswitch_db
    const/16 p0, 0x6806

    return p0

    :sswitch_de
    const/16 p0, 0x6805

    return p0

    :sswitch_e1
    const/16 p0, 0x6804

    return p0

    :sswitch_e4
    const/16 p0, 0x6803

    return p0

    :sswitch_e7
    const/16 p0, 0x6802

    return p0

    :sswitch_ea
    const/16 p0, 0x6801

    return p0

    :sswitch_ed
    const/16 p0, 0x6800

    return p0

    :sswitch_f0
    const/16 p0, 0x67ff

    return p0

    :sswitch_f3
    const/16 p0, 0x67fe

    return p0

    :sswitch_f6
    const/16 p0, 0x67fd

    return p0

    :sswitch_f9
    const/16 p0, 0x67fc

    return p0

    :sswitch_fc
    const/16 p0, 0x6798

    return p0

    :sswitch_ff
    const/16 p0, 0x678d

    return p0

    :sswitch_102
    const/16 p0, 0x678c

    return p0

    :cond_105
    const/16 p0, 0x67ad

    return p0

    :cond_108
    const/16 p0, 0x67ac

    return p0

    :cond_10b
    :sswitch_10b
    const/16 p0, 0x678b

    return p0

    :cond_10e
    const/16 p0, 0x678a

    return p0

    :cond_111
    const/16 p0, 0x6789

    return p0

    :cond_114
    const/16 p0, 0x6788

    return p0

    :cond_117
    const/16 p0, 0x6787

    return p0

    :cond_11a
    const/16 p0, 0x6786

    return p0

    :cond_11d
    const/16 p0, 0x8

    return p0

    :sswitch_data_120
    .sparse-switch
        0x7 -> :sswitch_10b
        0x8 -> :sswitch_102
        0x9 -> :sswitch_ff
        0x1f4 -> :sswitch_fc
        0x2328 -> :sswitch_f9
        0x2329 -> :sswitch_f6
        0x232a -> :sswitch_f3
        0x232b -> :sswitch_f0
        0x232c -> :sswitch_ed
        0x232e -> :sswitch_ea
        0x2331 -> :sswitch_e7
        0x2332 -> :sswitch_e4
        0x2333 -> :sswitch_e1
        0x2334 -> :sswitch_de
        0x2338 -> :sswitch_db
        0x2339 -> :sswitch_d8
        0x233a -> :sswitch_d5
        0x23f0 -> :sswitch_d2
        0x23f2 -> :sswitch_cf
        0x2710 -> :sswitch_cc
        0x2711 -> :sswitch_c9
        0x2712 -> :sswitch_c6
        0x2713 -> :sswitch_c3
        0x2714 -> :sswitch_c0
    .end sparse-switch

    :pswitch_data_182
    .packed-switch 0x3e8
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
    .end packed-switch

    :pswitch_data_192
    .packed-switch 0x7d0
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
    .end packed-switch

    :pswitch_data_19c
    .packed-switch 0xbb8
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
    .end packed-switch

    :pswitch_data_1a8
    .packed-switch 0xfa0
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
    .end packed-switch

    :pswitch_data_1ba
    .packed-switch 0x1770
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
    .end packed-switch

    :pswitch_data_1c8
    .packed-switch 0x1964
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
    .end packed-switch

    :pswitch_data_1dc
    .packed-switch 0x1b58
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
    .end packed-switch

    :pswitch_data_1f0
    .packed-switch 0x1f40
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
    .end packed-switch
.end method

.method public static zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 5

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    .line 163
    invoke-static {v0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zzb(I)I

    move-result v1

    .line 164
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_f

    return-object p0

    .line 166
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/games/GamesStatusCodes;->getStatusString(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getResolution()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zza(ILandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0

    :cond_2a
    packed-switch v0, :pswitch_data_3c

    .line 172
    :pswitch_2d
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getResolution()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-object v0

    :pswitch_3b
    return-object p0

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_2d
        :pswitch_3b
    .end packed-switch
.end method
