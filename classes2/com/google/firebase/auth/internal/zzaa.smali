.class public final Lcom/google/firebase/auth/internal/zzaa;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# direct methods
.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x445b

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    return-object p0

    :cond_e
    const/4 v0, 0x2

    const-string v1, ":"

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 5
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    .line 6
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2e

    aget-object v1, p0, v2

    if-eqz v1, :cond_2e

    .line 7
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v2

    .line 8
    :cond_2e
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_49

    .line 11
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/firebase/auth/internal/zzaa;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0

    .line 12
    :cond_49
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/firebase/auth/internal/zzaa;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_44c

    goto/16 :goto_329

    :sswitch_a
    const-string v0, "UNSUPPORTED_TENANT_OPERATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x31

    goto/16 :goto_32a

    :sswitch_16
    const-string v0, "EMAIL_CHANGE_NEEDS_VERIFICATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x3f

    goto/16 :goto_32a

    :sswitch_22
    const-string v0, "MISSING_SESSION_INFO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x23

    goto/16 :goto_32a

    :sswitch_2e
    const-string v0, "MISSING_CONTINUE_URI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x2c

    goto/16 :goto_32a

    :sswitch_3a
    const-string v0, "TOO_MANY_ATTEMPTS_TRY_LATER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x15

    goto/16 :goto_32a

    :sswitch_46
    const-string v0, "INVALID_APP_CREDENTIAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x13

    goto/16 :goto_32a

    :sswitch_52
    const-string v0, "INVALID_PHONE_NUMBER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x20

    goto/16 :goto_32a

    :sswitch_5e
    const-string v0, "USER_DISABLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/4 v0, 0x5

    goto/16 :goto_32a

    :sswitch_69
    const-string v0, "INVALID_IDENTIFIER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/4 v0, 0x6

    goto/16 :goto_32a

    :sswitch_74
    const-string v0, "FEDERATED_USER_ID_ALREADY_LINKED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0xc

    goto/16 :goto_32a

    :sswitch_80
    const-string v0, "MISSING_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x21

    goto/16 :goto_32a

    :sswitch_8c
    const-string v0, "SESSION_EXPIRED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x26

    goto/16 :goto_32a

    :sswitch_98
    const-string v0, "<<Network Error>>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0xf

    goto/16 :goto_32a

    :sswitch_a4
    const-string v0, "INVALID_PASSWORD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0xb

    goto/16 :goto_32a

    :sswitch_b0
    const-string v0, "INVALID_CUSTOM_TOKEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/4 v0, 0x2

    goto/16 :goto_32a

    :sswitch_bb
    const-string v0, "INVALID_PENDING_TOKEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/4 v0, 0x3

    goto/16 :goto_32a

    :sswitch_c6
    const-string v0, "RESET_PASSWORD_EXCEED_LIMIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x16

    goto/16 :goto_32a

    :sswitch_d2
    const-string v0, "INVALID_MESSAGE_PAYLOAD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x1a

    goto/16 :goto_32a

    :sswitch_de
    const-string v0, "MISSING_CLIENT_IDENTIFIER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x41

    goto/16 :goto_32a

    :sswitch_ea
    const-string v0, "REQUIRES_SECOND_FACTOR_AUTH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x35

    goto/16 :goto_32a

    :sswitch_f6
    const-string v0, "WEB_CONTEXT_CANCELED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x30

    goto/16 :goto_32a

    :sswitch_102
    const-string v0, "CREDENTIAL_MISMATCH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/4 v0, 0x1

    goto/16 :goto_32a

    :sswitch_10d
    const-string v0, "INVALID_PROVIDER_ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x2e

    goto/16 :goto_32a

    :sswitch_119
    const-string v0, "INVALID_VERIFICATION_PROOF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x25

    goto/16 :goto_32a

    :sswitch_125
    const-string v0, "INVALID_MFA_PENDING_CREDENTIAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x38

    goto/16 :goto_32a

    :sswitch_131
    const-string v0, "REJECTED_CREDENTIAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x34

    goto/16 :goto_32a

    :sswitch_13d
    const-string v0, "UNVERIFIED_EMAIL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x3b

    goto/16 :goto_32a

    :sswitch_149
    const-string v0, "PASSWORD_LOGIN_DISABLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x12

    goto/16 :goto_32a

    :sswitch_155
    const-string v0, "WEB_STORAGE_UNSUPPORTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x2b

    goto/16 :goto_32a

    :sswitch_161
    const-string v0, "INVALID_ID_TOKEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0xd

    goto/16 :goto_32a

    :sswitch_16d
    const-string v0, "EMAIL_EXISTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0xa

    goto/16 :goto_32a

    :sswitch_179
    const-string v0, "MISSING_MFA_PENDING_CREDENTIAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x36

    goto/16 :goto_32a

    :sswitch_185
    const-string v0, "INVALID_DYNAMIC_LINK_DOMAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x33

    goto/16 :goto_32a

    :sswitch_191
    const-string v0, "MISSING_PHONE_NUMBER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x1f

    goto/16 :goto_32a

    :sswitch_19d
    const-string v0, "INVALID_SENDER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x1b

    goto/16 :goto_32a

    :sswitch_1a9
    const-string v0, "UNSUPPORTED_FIRST_FACTOR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x3e

    goto/16 :goto_32a

    :sswitch_1b5
    const-string v0, "EMAIL_NOT_FOUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x8

    goto/16 :goto_32a

    :sswitch_1c1
    const-string v0, "WEAK_PASSWORD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x10

    goto/16 :goto_32a

    :sswitch_1cd
    const-string v0, "USER_NOT_FOUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x9

    goto/16 :goto_32a

    :sswitch_1d9
    const-string v0, "MISSING_MFA_ENROLLMENT_ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x37

    goto/16 :goto_32a

    :sswitch_1e5
    const-string v0, "SECOND_FACTOR_LIMIT_EXCEEDED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x3d

    goto/16 :goto_32a

    :sswitch_1f1
    const-string v0, "WEB_INTERNAL_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x2a

    goto/16 :goto_32a

    :sswitch_1fd
    const-string v0, "OPERATION_NOT_ALLOWED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x11

    goto/16 :goto_32a

    :sswitch_209
    const-string v0, "TIMEOUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0xe

    goto/16 :goto_32a

    :sswitch_215
    const-string v0, "CREDENTIAL_TOO_OLD_LOGIN_AGAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x14

    goto/16 :goto_32a

    :sswitch_221
    const-string v0, "MISSING_PASSWORD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x1e

    goto/16 :goto_32a

    :sswitch_22d
    const-string v0, "MFA_ENROLLMENT_NOT_FOUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x39

    goto/16 :goto_32a

    :sswitch_239
    const-string v0, "NO_SUCH_PROVIDER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/4 v0, 0x0

    goto/16 :goto_32a

    :sswitch_244
    const-string v0, "INVALID_CERT_HASH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x28

    goto/16 :goto_32a

    :sswitch_250
    const-string v0, "MISSING_OR_INVALID_NONCE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x42

    goto/16 :goto_32a

    :sswitch_25c
    const-string v0, "ADMIN_ONLY_OPERATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x3a

    goto/16 :goto_32a

    :sswitch_268
    const-string v0, "INVALID_EMAIL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/4 v0, 0x7

    goto/16 :goto_32a

    :sswitch_273
    const-string v0, "SECOND_FACTOR_EXISTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x3c

    goto/16 :goto_32a

    :sswitch_27f
    const-string v0, "INVALID_SESSION_INFO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x24

    goto/16 :goto_32a

    :sswitch_28b
    const-string v0, "INVALID_TENANT_ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x32

    goto/16 :goto_32a

    :sswitch_297
    const-string v0, "TOKEN_EXPIRED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x17

    goto/16 :goto_32a

    :sswitch_2a3
    const-string v0, "INVALID_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x22

    goto/16 :goto_32a

    :sswitch_2af
    const-string v0, "MISSING_EMAIL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x1d

    goto/16 :goto_32a

    :sswitch_2bb
    const-string v0, "INVALID_OOB_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x18

    goto/16 :goto_32a

    :sswitch_2c7
    const-string v0, "EXPIRED_OOB_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x19

    goto :goto_32a

    :sswitch_2d2
    const-string v0, "WEB_NETWORK_REQUEST_FAILED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x29

    goto :goto_32a

    :sswitch_2dd
    const-string v0, "QUOTA_EXCEEDED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x27

    goto :goto_32a

    :sswitch_2e8
    const-string v0, "DYNAMIC_LINK_NOT_ACTIVATED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x2d

    goto :goto_32a

    :sswitch_2f3
    const-string v0, "INVALID_IDP_RESPONSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/4 v0, 0x4

    goto :goto_32a

    :sswitch_2fd
    const-string v0, "INTERNAL_SUCCESS_SIGN_OUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x40

    goto :goto_32a

    :sswitch_308
    const-string v0, "WEB_CONTEXT_ALREADY_PRESENTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x2f

    goto :goto_32a

    :sswitch_313
    const-string v0, "INVALID_RECIPIENT_EMAIL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x1c

    goto :goto_32a

    :sswitch_31e
    const-string v0, "USER_CANCELLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const/16 v0, 0x43

    goto :goto_32a

    :cond_329
    :goto_329
    const/4 v0, -0x1

    :goto_32a
    const/16 v2, 0x445b

    packed-switch v0, :pswitch_data_55e

    const/16 v0, 0x445b

    goto/16 :goto_410

    :pswitch_333
    const/16 v0, 0x4651

    goto/16 :goto_410

    :pswitch_337
    const/16 v0, 0x42c6

    goto/16 :goto_410

    :pswitch_33b
    const/16 v0, 0x42c5

    goto/16 :goto_410

    :pswitch_33f
    const/16 v0, 0x42c3

    goto/16 :goto_410

    :pswitch_343
    const/16 v0, 0x42c2

    goto/16 :goto_410

    :pswitch_347
    const/16 v0, 0x42c1

    goto/16 :goto_410

    :pswitch_34b
    const/16 v0, 0x42c0

    goto/16 :goto_410

    :pswitch_34f
    const/16 v0, 0x42bf

    goto/16 :goto_410

    :pswitch_353
    const/16 v0, 0x42be

    goto/16 :goto_410

    :pswitch_357
    const/16 v0, 0x42bd

    goto/16 :goto_410

    :pswitch_35b
    const/16 v0, 0x42bc

    goto/16 :goto_410

    :pswitch_35f
    const/16 v0, 0x42bb

    goto/16 :goto_410

    :pswitch_363
    const/16 v0, 0x42ba

    goto/16 :goto_410

    :pswitch_367
    const/16 v0, 0x42b9

    goto/16 :goto_410

    :pswitch_36b
    const/16 v0, 0x42b6

    goto/16 :goto_410

    :pswitch_36f
    const/16 v0, 0x42b3

    goto/16 :goto_410

    :pswitch_373
    const/16 v0, 0x42b2

    goto/16 :goto_410

    :pswitch_377
    const/16 v0, 0x42b7

    goto/16 :goto_410

    :pswitch_37b
    const/16 v0, 0x42b1

    goto/16 :goto_410

    :pswitch_37f
    const/16 v0, 0x42a2

    goto/16 :goto_410

    :pswitch_383
    const/16 v0, 0x42a1

    goto/16 :goto_410

    :pswitch_387
    const/16 v0, 0x42af

    goto/16 :goto_410

    :pswitch_38b
    const/16 v0, 0x42ac

    goto/16 :goto_410

    :pswitch_38f
    const/16 v0, 0x4290

    goto/16 :goto_410

    :pswitch_393
    const/16 v0, 0x42a9

    goto/16 :goto_410

    :pswitch_397
    const/16 v0, 0x42a6

    goto/16 :goto_410

    :pswitch_39b
    const/16 v0, 0x42a5

    goto/16 :goto_410

    :pswitch_39f
    const/16 v0, 0x42a8

    goto/16 :goto_410

    :pswitch_3a3
    const/16 v0, 0x429c

    goto/16 :goto_410

    :pswitch_3a7
    const/16 v0, 0x429b

    goto/16 :goto_410

    :pswitch_3ab
    const/16 v0, 0x4299

    goto/16 :goto_410

    :pswitch_3af
    const/16 v0, 0x4296

    goto/16 :goto_410

    :pswitch_3b3
    const/16 v0, 0x4295

    goto/16 :goto_410

    :pswitch_3b7
    const/16 v0, 0x4294

    goto/16 :goto_410

    :pswitch_3bb
    const/16 v0, 0x4293

    goto/16 :goto_410

    :pswitch_3bf
    const/16 v0, 0x4292

    goto/16 :goto_410

    :pswitch_3c3
    const/16 v0, 0x4291

    goto :goto_410

    :pswitch_3c6
    const/16 v0, 0x428b

    goto :goto_410

    :pswitch_3c9
    const/16 v0, 0x428a

    goto :goto_410

    :pswitch_3cc
    const/16 v0, 0x4289

    goto :goto_410

    :pswitch_3cf
    const/16 v0, 0x4288

    goto :goto_410

    :pswitch_3d2
    const/16 v0, 0x4287

    goto :goto_410

    :pswitch_3d5
    const/16 v0, 0x4285

    goto :goto_410

    :pswitch_3d8
    const/16 v0, 0x4286

    goto :goto_410

    :pswitch_3db
    const/16 v0, 0x427d

    goto :goto_410

    :pswitch_3de
    const/16 v0, 0x4272

    goto :goto_410

    :pswitch_3e1
    const/16 v0, 0x4276

    goto :goto_410

    :pswitch_3e4
    const/16 v0, 0x4284

    goto :goto_410

    :pswitch_3e7
    const/16 v0, 0x426e

    goto :goto_410

    :pswitch_3ea
    const/16 v0, 0x4282

    goto :goto_410

    :pswitch_3ed
    const/16 v0, 0x427c

    goto :goto_410

    :pswitch_3f0
    const/16 v0, 0x4279

    goto :goto_410

    :pswitch_3f3
    const/16 v0, 0x4281

    goto :goto_410

    :pswitch_3f6
    const/16 v0, 0x4271

    goto :goto_410

    :pswitch_3f9
    const/16 v0, 0x426f

    goto :goto_410

    :pswitch_3fc
    const/16 v0, 0x4273

    goto :goto_410

    :pswitch_3ff
    const/16 v0, 0x4270

    goto :goto_410

    :pswitch_402
    const/16 v0, 0x426d

    goto :goto_410

    :pswitch_405
    const/16 v0, 0x426c

    goto :goto_410

    :pswitch_408
    const/16 v0, 0x4268

    goto :goto_410

    :pswitch_40b
    const/16 v0, 0x426a

    goto :goto_410

    :pswitch_40e
    const/16 v0, 0x4278

    :goto_410
    if-ne v0, v2, :cond_446

    if-eqz p1, :cond_440

    .line 81
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 82
    :cond_440
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 83
    :cond_446
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object p0

    :sswitch_data_44c
    .sparse-switch
        -0x7efcea43 -> :sswitch_31e
        -0x7b22a0b2 -> :sswitch_313
        -0x781788c8 -> :sswitch_308
        -0x77857c36 -> :sswitch_2fd
        -0x77476bed -> :sswitch_2f3
        -0x73e5b440 -> :sswitch_2e8
        -0x6b538ea6 -> :sswitch_2dd
        -0x69c8a437 -> :sswitch_2d2
        -0x5ea1125c -> :sswitch_2c7
        -0x5e6850ee -> :sswitch_2bb
        -0x56f2c8bd -> :sswitch_2af
        -0x54b910ab -> :sswitch_2a3
        -0x50384d61 -> :sswitch_297
        -0x4fe04f98 -> :sswitch_28b
        -0x496efdc1 -> :sswitch_27f
        -0x47af9f3f -> :sswitch_273
        -0x424dc8ec -> :sswitch_268
        -0x3f66f07c -> :sswitch_25c
        -0x3a15c01c -> :sswitch_250
        -0x337d021f -> :sswitch_244
        -0x31620515 -> :sswitch_239
        -0x2cb02e8e -> :sswitch_22d
        -0x2be1a28c -> :sswitch_221
        -0x26818461 -> :sswitch_215
        -0x238526bf -> :sswitch_209
        -0x13e36efc -> :sswitch_1fd
        -0x118d7daf -> :sswitch_1f1
        -0xcf11d24 -> :sswitch_1e5
        -0x74fc0ba -> :sswitch_1d9
        -0x47f049e -> :sswitch_1cd
        -0x26cd47e -> :sswitch_1c1
        0xea41d3 -> :sswitch_1b5
        0xc890bc8 -> :sswitch_1a9
        0x100d9d9d -> :sswitch_19d
        0x109e31b3 -> :sswitch_191
        0x1857de21 -> :sswitch_185
        0x193f0f0f -> :sswitch_179
        0x1cd6ee7f -> :sswitch_16d
        0x1d53031d -> :sswitch_161
        0x1d546ca6 -> :sswitch_155
        0x205960d6 -> :sswitch_149
        0x22b79a1e -> :sswitch_13d
        0x24100ab8 -> :sswitch_131
        0x2c718b5e -> :sswitch_125
        0x2ee76568 -> :sswitch_119
        0x2fa3b7c1 -> :sswitch_10d
        0x30dad0b6 -> :sswitch_102
        0x325216f4 -> :sswitch_f6
        0x34d2237e -> :sswitch_ea
        0x355d3ae4 -> :sswitch_de
        0x36ff0eae -> :sswitch_d2
        0x3af2f364 -> :sswitch_c6
        0x3dafd0a9 -> :sswitch_bb
        0x3feaecf3 -> :sswitch_b0
        0x41440003 -> :sswitch_a4
        0x41fcb816 -> :sswitch_98
        0x440b123c -> :sswitch_8c
        0x4783ad46 -> :sswitch_80
        0x491afceb -> :sswitch_74
        0x52c73411 -> :sswitch_69
        0x55758c70 -> :sswitch_5e
        0x5601f4c2 -> :sswitch_52
        0x591ab8bd -> :sswitch_46
        0x594828e4 -> :sswitch_3a
        0x6b7e880d -> :sswitch_2e
        0x712d3f30 -> :sswitch_22
        0x7afa1289 -> :sswitch_16
        0x7c2168dc -> :sswitch_a
    .end sparse-switch

    :pswitch_data_55e
    .packed-switch 0x0
        :pswitch_40e
        :pswitch_40b
        :pswitch_408
        :pswitch_405
        :pswitch_405
        :pswitch_402
        :pswitch_3ff
        :pswitch_3ff
        :pswitch_3fc
        :pswitch_3fc
        :pswitch_3f9
        :pswitch_3f6
        :pswitch_3f3
        :pswitch_3f0
        :pswitch_3ed
        :pswitch_3ed
        :pswitch_3ea
        :pswitch_3e7
        :pswitch_3e7
        :pswitch_3e4
        :pswitch_3e1
        :pswitch_3de
        :pswitch_3de
        :pswitch_3db
        :pswitch_3d8
        :pswitch_3d5
        :pswitch_3d2
        :pswitch_3cf
        :pswitch_3cc
        :pswitch_3c9
        :pswitch_3c6
        :pswitch_3c3
        :pswitch_3bf
        :pswitch_3bb
        :pswitch_3b7
        :pswitch_3b3
        :pswitch_3af
        :pswitch_3ab
        :pswitch_3a7
        :pswitch_3a3
        :pswitch_39f
        :pswitch_39b
        :pswitch_397
        :pswitch_393
        :pswitch_38f
        :pswitch_38b
        :pswitch_387
        :pswitch_383
        :pswitch_37f
        :pswitch_37b
        :pswitch_377
        :pswitch_373
        :pswitch_36f
        :pswitch_36b
        :pswitch_367
        :pswitch_363
        :pswitch_35f
        :pswitch_35b
        :pswitch_357
        :pswitch_353
        :pswitch_34f
        :pswitch_34b
        :pswitch_347
        :pswitch_343
        :pswitch_33f
        :pswitch_33b
        :pswitch_337
        :pswitch_333
    .end packed-switch
.end method
