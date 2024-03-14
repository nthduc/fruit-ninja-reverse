.class public Lcom/helpshift/common/conversation/ConversationDB;
.super Ljava/lang/Object;
.source "ConversationDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;,
        Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_ConverDB"

.field private static instance:Lcom/helpshift/common/conversation/ConversationDB;


# instance fields
.field private final KEY_ATTACHMENT_COUNT:Ljava/lang/String;

.field private final KEY_BOT_ACTION_TYPE:Ljava/lang/String;

.field private final KEY_BOT_ENDED_REASON:Ljava/lang/String;

.field private final KEY_CHATBOT_INFO:Ljava/lang/String;

.field private final KEY_CONTENT_TYPE:Ljava/lang/String;

.field private final KEY_CONVERSATION_ENDED_DELEGATE_SENT:Ljava/lang/String;

.field private final KEY_CSAT_FEEDBACK:Ljava/lang/String;

.field private final KEY_CSAT_RATING:Ljava/lang/String;

.field private final KEY_CSAT_STATE:Ljava/lang/String;

.field private final KEY_DATE_TIME:Ljava/lang/String;

.field private final KEY_FAQS:Ljava/lang/String;

.field private final KEY_FAQS_SOURCE:Ljava/lang/String;

.field private final KEY_FAQ_LANGUAGE:Ljava/lang/String;

.field private final KEY_FAQ_PUBLISH_ID:Ljava/lang/String;

.field private final KEY_FAQ_TITLE:Ljava/lang/String;

.field private final KEY_FILE_NAME:Ljava/lang/String;

.field private final KEY_FILE_PATH:Ljava/lang/String;

.field private final KEY_FOLLOW_UP_REJECTED_OPEN_CONVERSATION:Ljava/lang/String;

.field private final KEY_FOLLOW_UP_REJECTED_REASON:Ljava/lang/String;

.field private final KEY_HAS_NEXT_BOT:Ljava/lang/String;

.field private final KEY_IMAGE_ATTACHMENT_COMPRESSION_COPYING_DONE:Ljava/lang/String;

.field private final KEY_IMAGE_ATTACHMENT_DRAFT_FILE_PATH:Ljava/lang/String;

.field private final KEY_IMAGE_ATTACHMENT_DRAFT_ORIGINAL_NAME:Ljava/lang/String;

.field private final KEY_IMAGE_ATTACHMENT_DRAFT_ORIGINAL_SIZE:Ljava/lang/String;

.field private final KEY_IMAGE_ATTACHMENT_TYPE:Ljava/lang/String;

.field private final KEY_INCREMENT_MESSAGE_COUNT:Ljava/lang/String;

.field private final KEY_INPUT_KEYBOARD:Ljava/lang/String;

.field private final KEY_INPUT_LABEL:Ljava/lang/String;

.field private final KEY_INPUT_OPTIONS:Ljava/lang/String;

.field private final KEY_INPUT_PLACEHOLDER:Ljava/lang/String;

.field private final KEY_INPUT_REQUIRED:Ljava/lang/String;

.field private final KEY_INPUT_SKIP_LABEL:Ljava/lang/String;

.field private final KEY_IS_ANSWERED:Ljava/lang/String;

.field private final KEY_IS_AUTO_FILLED_PREISSUE:Ljava/lang/String;

.field private final KEY_IS_MESSAGE_EMPTY:Ljava/lang/String;

.field private final KEY_IS_RESPONSE_SKIPPED:Ljava/lang/String;

.field private final KEY_IS_SUGGESTION_READ_EVENT_SENT:Ljava/lang/String;

.field private final KEY_IS_USER_ATTACHMENT_REJECTED:Ljava/lang/String;

.field private final KEY_IS_USER_ATTACHMENT_ZIPPED:Ljava/lang/String;

.field private final KEY_MESSAGE_SYNC_STATUS:Ljava/lang/String;

.field private final KEY_OPTION_DATA:Ljava/lang/String;

.field private final KEY_OPTION_TITLE:Ljava/lang/String;

.field private final KEY_OPTION_TYPE:Ljava/lang/String;

.field private final KEY_ORIGINAL_MESSAGE_ID:Ljava/lang/String;

.field private final KEY_READ_AT:Ljava/lang/String;

.field private final KEY_REFERRED_MESSAGE_ID:Ljava/lang/String;

.field private final KEY_REFERRED_MESSAGE_TYPE:Ljava/lang/String;

.field private final KEY_SECURE_ATTACHMENT:Ljava/lang/String;

.field private final KEY_SEEN_AT_MESSAGE_CURSOR:Ljava/lang/String;

.field private final KEY_SEEN_SYNC_STATUS:Ljava/lang/String;

.field private final KEY_SELECTED_OPTION_DATA:Ljava/lang/String;

.field private final KEY_SIZE:Ljava/lang/String;

.field private final KEY_SMART_INTENT_IDs:Ljava/lang/String;

.field private final KEY_SMART_INTENT_LABELS:Ljava/lang/String;

.field private final KEY_SMART_INTENT_TREE_ID:Ljava/lang/String;

.field private final KEY_SMART_INTENT_USER_QUERY:Ljava/lang/String;

.field private final KEY_SUGGESTION_READ_FAQ_PUBLISH_ID:Ljava/lang/String;

.field private final KEY_THUMBNAIL_FILE_PATH:Ljava/lang/String;

.field private final KEY_THUMBNAIL_URL:Ljava/lang/String;

.field private final KEY_TIMEZONE_ID:Ljava/lang/String;

.field private final KEY_URL:Ljava/lang/String;

.field private final dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "csat_rating"

    .line 91
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_CSAT_RATING:Ljava/lang/String;

    const-string v0, "csat_state"

    .line 92
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_CSAT_STATE:Ljava/lang/String;

    const-string v0, "csat_feedback"

    .line 93
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_CSAT_FEEDBACK:Ljava/lang/String;

    const-string v0, "increment_message_count"

    .line 94
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_INCREMENT_MESSAGE_COUNT:Ljava/lang/String;

    const-string v0, "ended_delegate_sent"

    .line 95
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_CONVERSATION_ENDED_DELEGATE_SENT:Ljava/lang/String;

    const-string v0, "image_draft_orig_name"

    .line 96
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_IMAGE_ATTACHMENT_DRAFT_ORIGINAL_NAME:Ljava/lang/String;

    const-string v0, "image_draft_orig_size"

    .line 97
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_IMAGE_ATTACHMENT_DRAFT_ORIGINAL_SIZE:Ljava/lang/String;

    const-string v0, "image_draft_file_path"

    .line 98
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_IMAGE_ATTACHMENT_DRAFT_FILE_PATH:Ljava/lang/String;

    const-string v0, "image_copy_done"

    .line 99
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_IMAGE_ATTACHMENT_COMPRESSION_COPYING_DONE:Ljava/lang/String;

    const-string v0, "attachment_type"

    .line 100
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_IMAGE_ATTACHMENT_TYPE:Ljava/lang/String;

    const-string v0, "is_autofilled_preissue"

    .line 101
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_IS_AUTO_FILLED_PREISSUE:Ljava/lang/String;

    const-string v0, "smart_intent_ids"

    .line 102
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_SMART_INTENT_IDs:Ljava/lang/String;

    const-string v0, "smart_intent_tree_id"

    .line 103
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_SMART_INTENT_TREE_ID:Ljava/lang/String;

    const-string v0, "smart_intent_user_query"

    .line 104
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_SMART_INTENT_USER_QUERY:Ljava/lang/String;

    const-string v0, "referredMessageId"

    .line 107
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_REFERRED_MESSAGE_ID:Ljava/lang/String;

    const-string v0, "rejected_reason"

    .line 108
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_FOLLOW_UP_REJECTED_REASON:Ljava/lang/String;

    const-string v0, "rejected_conv_id"

    .line 109
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_FOLLOW_UP_REJECTED_OPEN_CONVERSATION:Ljava/lang/String;

    const-string v0, "is_answered"

    .line 110
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_IS_ANSWERED:Ljava/lang/String;

    const-string v0, "content_type"

    .line 111
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_CONTENT_TYPE:Ljava/lang/String;

    const-string v0, "file_name"

    .line 112
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_FILE_NAME:Ljava/lang/String;

    const-string v0, "url"

    .line 113
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_URL:Ljava/lang/String;

    const-string v0, "size"

    .line 114
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_SIZE:Ljava/lang/String;

    const-string v0, "thumbnail_url"

    .line 115
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_THUMBNAIL_URL:Ljava/lang/String;

    const-string v0, "thumbnailFilePath"

    .line 116
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_THUMBNAIL_FILE_PATH:Ljava/lang/String;

    const-string v0, "filePath"

    .line 117
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_FILE_PATH:Ljava/lang/String;

    const-string v0, "seen_cursor"

    .line 118
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_SEEN_AT_MESSAGE_CURSOR:Ljava/lang/String;

    const-string v0, "seen_sync_status"

    .line 119
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_SEEN_SYNC_STATUS:Ljava/lang/String;

    const-string v0, "read_at"

    .line 120
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_READ_AT:Ljava/lang/String;

    const-string v0, "input_keyboard"

    .line 121
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_INPUT_KEYBOARD:Ljava/lang/String;

    const-string v0, "input_required"

    .line 122
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_INPUT_REQUIRED:Ljava/lang/String;

    const-string v0, "input_skip_label"

    .line 123
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_INPUT_SKIP_LABEL:Ljava/lang/String;

    const-string v0, "input_placeholder"

    .line 124
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_INPUT_PLACEHOLDER:Ljava/lang/String;

    const-string v0, "input_label"

    .line 125
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_INPUT_LABEL:Ljava/lang/String;

    const-string v0, "input_options"

    .line 126
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_INPUT_OPTIONS:Ljava/lang/String;

    const-string v0, "option_type"

    .line 127
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_OPTION_TYPE:Ljava/lang/String;

    const-string v0, "option_title"

    .line 128
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_OPTION_TITLE:Ljava/lang/String;

    const-string v0, "option_data"

    .line 129
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_OPTION_DATA:Ljava/lang/String;

    const-string v0, "chatbot_info"

    .line 130
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_CHATBOT_INFO:Ljava/lang/String;

    const-string v0, "has_next_bot"

    .line 131
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_HAS_NEXT_BOT:Ljava/lang/String;

    const-string v0, "faqs"

    .line 132
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_FAQS:Ljava/lang/String;

    const-string v0, "faq_source"

    .line 133
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_FAQS_SOURCE:Ljava/lang/String;

    const-string v0, "faq_title"

    .line 134
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_FAQ_TITLE:Ljava/lang/String;

    const-string v0, "faq_publish_id"

    .line 135
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_FAQ_PUBLISH_ID:Ljava/lang/String;

    const-string v0, "faq_language"

    .line 136
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_FAQ_LANGUAGE:Ljava/lang/String;

    const-string v0, "is_response_skipped"

    .line 137
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_IS_RESPONSE_SKIPPED:Ljava/lang/String;

    const-string v0, "selected_option_data"

    .line 138
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_SELECTED_OPTION_DATA:Ljava/lang/String;

    const-string v0, "referred_message_type"

    .line 139
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_REFERRED_MESSAGE_TYPE:Ljava/lang/String;

    const-string v0, "bot_action_type"

    .line 140
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_BOT_ACTION_TYPE:Ljava/lang/String;

    const-string v0, "bot_ended_reason"

    .line 141
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_BOT_ENDED_REASON:Ljava/lang/String;

    const-string v0, "message_sync_status"

    .line 142
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_MESSAGE_SYNC_STATUS:Ljava/lang/String;

    const-string v0, "is_secure"

    .line 143
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_SECURE_ATTACHMENT:Ljava/lang/String;

    const-string v0, "is_user_attachment_zipped"

    .line 144
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_IS_USER_ATTACHMENT_ZIPPED:Ljava/lang/String;

    const-string v0, "is_user_attachment_rejected"

    .line 145
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_IS_USER_ATTACHMENT_REJECTED:Ljava/lang/String;

    const-string v0, "is_message_empty"

    .line 146
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_IS_MESSAGE_EMPTY:Ljava/lang/String;

    const-string v0, "is_suggestion_read_event_sent"

    .line 147
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_IS_SUGGESTION_READ_EVENT_SENT:Ljava/lang/String;

    const-string v0, "suggestion_read_faq_publish_id"

    .line 148
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_SUGGESTION_READ_FAQ_PUBLISH_ID:Ljava/lang/String;

    const-string v0, "dt"

    .line 149
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_DATE_TIME:Ljava/lang/String;

    const-string v0, "timezone_id"

    .line 150
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_TIMEZONE_ID:Ljava/lang/String;

    const-string v0, "attachment_count"

    .line 151
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_ATTACHMENT_COUNT:Ljava/lang/String;

    const-string v0, "original_message_server_id"

    .line 152
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_ORIGINAL_MESSAGE_ID:Ljava/lang/String;

    const-string v0, "intent_labels"

    .line 153
    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->KEY_SMART_INTENT_LABELS:Ljava/lang/String;

    .line 159
    new-instance v0, Lcom/helpshift/db/conversation/ConversationDBHelper;

    new-instance v1, Lcom/helpshift/db/conversation/ConversationDatabaseContract;

    invoke-direct {v1}, Lcom/helpshift/db/conversation/ConversationDatabaseContract;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/helpshift/db/conversation/ConversationDBHelper;-><init>(Landroid/content/Context;Lcom/helpshift/db/conversation/ConversationDatabaseContract;)V

    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    return-void
.end method

.method private actionCardToContentValues(Lcom/helpshift/conversation/activeconversation/model/ActionCard;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 5

    .line 558
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "message_id"

    .line 559
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->title:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->imageUrl:Ljava/lang/String;

    const-string v1, "image_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-boolean p2, p1, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->isSecure:Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "is_image_secure"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->filePath:Ljava/lang/String;

    const-string p2, "file_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private actionToContentValues(Lcom/helpshift/conversation/activeconversation/model/Action;J)Landroid/content/ContentValues;
    .registers 5

    .line 568
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 569
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "action_card_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 570
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Action;->actionSHA:Ljava/lang/String;

    const-string p3, "action_sha"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Action;->actionTitle:Ljava/lang/String;

    const-string p3, "action_title"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Action;->actionType:Lcom/helpshift/conversation/activeconversation/model/ActionType;

    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/model/ActionType;->getValue()Ljava/lang/String;

    move-result-object p2

    const-string p3, "action_type"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    new-instance p2, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Action;->actionData:Ljava/util/Map;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "action_data"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildJsonObjectForAttachmentMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2142
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;->contentType:Ljava/lang/String;

    const-string v1, "content_type"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2143
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;->fileName:Ljava/lang/String;

    const-string v1, "file_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2144
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;->filePath:Ljava/lang/String;

    const-string v1, "filePath"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2145
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;->attachmentUrl:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2146
    iget v0, p2, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;->size:I

    const-string v1, "size"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2147
    iget-boolean v0, p2, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;->isSecureAttachment:Z

    const-string v1, "is_secure"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2148
    iget-boolean v0, p2, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;->isZipped:Z

    const-string v1, "is_user_attachment_zipped"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2149
    iget-boolean p2, p2, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;->isRejected:Z

    const-string v0, "is_user_attachment_rejected"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForActionCardMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2181
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->originalMessageServerId:Ljava/lang/String;

    const-string v0, "original_message_server_id"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForAdminBotControlMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2015
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;->actionType:Ljava/lang/String;

    const-string v1, "bot_action_type"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2016
    iget-boolean p2, p2, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;->hasNextBot:Z

    const-string v0, "has_next_bot"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForAttachmentCount(Lorg/json/JSONObject;I)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "attachment_count"

    .line 2109
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1
.end method

.method private buildMetaForAutoRetriableMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2175
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;->getSyncStatus()I

    move-result p2

    const-string v0, "message_sync_status"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForBotInfo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "chatbot_info"

    .line 2078
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForDateTime(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2071
    iget v0, p2, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->keyboard:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    .line 2072
    iget-wide v0, p2, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->dateInMillis:J

    const-string v2, "dt"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2073
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->timeZoneId:Ljava/lang/String;

    const-string v0, "timezone_id"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    return-void
.end method

.method private buildMetaForFAQList(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2030
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->faqs:Ljava/util/List;

    if-eqz v0, :cond_3e

    .line 2031
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2032
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->faqs:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM$FAQ;

    .line 2033
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2034
    iget-object v3, v1, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM$FAQ;->title:Ljava/lang/String;

    const-string v4, "faq_title"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2035
    iget-object v3, v1, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM$FAQ;->publishId:Ljava/lang/String;

    const-string v4, "faq_publish_id"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2036
    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM$FAQ;->language:Ljava/lang/String;

    const-string v3, "faq_language"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2037
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_f

    :cond_39
    const-string p2, "faqs"

    .line 2039
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3e
    return-void
.end method

.method private buildMetaForFAQListSource(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2045
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->source:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 2046
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->source:Ljava/lang/String;

    const-string v0, "faq_source"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    return-void
.end method

.method private buildMetaForFollowUpRejected(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2128
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;->referredMessageId:Ljava/lang/String;

    const-string v1, "referredMessageId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2129
    iget v0, p2, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;->reason:I

    const-string v1, "rejected_reason"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2130
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;->openConversationId:Ljava/lang/String;

    const-string v0, "rejected_conv_id"

    .line 2131
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForImageAttachmentMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2166
    invoke-direct {p0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->buildJsonObjectForAttachmentMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V

    .line 2167
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;->thumbnailUrl:Ljava/lang/String;

    const-string v1, "thumbnail_url"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2168
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;->thumbnailFilePath:Ljava/lang/String;

    const-string v1, "thumbnailFilePath"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2169
    iget-boolean p2, p2, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;->isSecureAttachment:Z

    const-string v0, "is_secure"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForInput(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2091
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->botInfo:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForBotInfo(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2092
    iget-boolean v0, p2, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->required:Z

    const-string v1, "input_required"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2093
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->inputLabel:Ljava/lang/String;

    const-string v1, "input_label"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2094
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->skipLabel:Ljava/lang/String;

    const-string v1, "input_skip_label"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2095
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->options:Ljava/util/List;

    if-eqz v0, :cond_51

    .line 2096
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2097
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;

    .line 2098
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2099
    iget-object v4, v2, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;->title:Ljava/lang/String;

    const-string v5, "option_title"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2100
    iget-object v2, v2, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;->jsonData:Ljava/lang/String;

    const-string v4, "option_data"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2101
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_29

    :cond_4c
    const-string v1, "input_options"

    .line 2103
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2105
    :cond_51
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->type:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "option_type"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForInput(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/input/TextInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2082
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/input/TextInput;->botInfo:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForBotInfo(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2083
    iget-boolean v0, p2, Lcom/helpshift/conversation/activeconversation/message/input/TextInput;->required:Z

    const-string v1, "input_required"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2084
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/input/TextInput;->skipLabel:Ljava/lang/String;

    const-string v1, "input_skip_label"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2085
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/input/TextInput;->inputLabel:Ljava/lang/String;

    const-string v1, "input_label"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2086
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/input/TextInput;->placeholder:Ljava/lang/String;

    const-string v1, "input_placeholder"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2087
    iget p2, p2, Lcom/helpshift/conversation/activeconversation/message/input/TextInput;->keyboard:I

    invoke-direct {p0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForInputKeyboard(Lorg/json/JSONObject;I)V

    return-void
.end method

.method private buildMetaForInputKeyboard(Lorg/json/JSONObject;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "input_keyboard"

    .line 2066
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForIntentLabels(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1999
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;->intentLabels:Ljava/util/List;

    invoke-static {p2}, Lcom/helpshift/util/HSJSONUtils;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    const-string v0, "intent_labels"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForIsAnswered(Lorg/json/JSONObject;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "is_answered"

    .line 2136
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForIsMessageEmpty(Lorg/json/JSONObject;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "is_message_empty"

    .line 2010
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForIsResponseSkipped(Lorg/json/JSONObject;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "is_response_skipped"

    .line 2062
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForIsSuggestionsReadEvent(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2004
    iget-boolean v0, p2, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->isSuggestionsReadEventSent:Z

    const-string v1, "is_suggestion_read_event_sent"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2005
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->suggestionsReadFAQPublishId:Ljava/lang/String;

    const-string v0, "suggestion_read_faq_publish_id"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForMessageSeenData(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2115
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->seenAtMessageCursor:Ljava/lang/String;

    const-string v1, "seen_cursor"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2116
    iget-boolean v0, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isMessageSeenSynced:Z

    const-string v1, "seen_sync_status"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2117
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->readAt:Ljava/lang/String;

    const-string v0, "read_at"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForReferredMessageId(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "referredMessageId"

    .line 2122
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForReferredMessageType(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/MessageType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2052
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->getValue()Ljava/lang/String;

    move-result-object p2

    const-string v0, "referred_message_type"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForScreenshotAttachmentMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2155
    invoke-direct {p0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->buildJsonObjectForAttachmentMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V

    .line 2156
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->thumbnailUrl:Ljava/lang/String;

    const-string v1, "thumbnail_url"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2157
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->refersMessageId:Ljava/lang/String;

    const-string v1, "referredMessageId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2158
    iget-boolean v0, p2, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->isSecureAttachment:Z

    const-string v1, "is_secure"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2159
    iget-boolean v0, p2, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->isZipped:Z

    const-string v1, "is_user_attachment_zipped"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2160
    iget-boolean p2, p2, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->isRejected:Z

    const-string v0, "is_user_attachment_rejected"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForSelectedOptionData(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "selected_option_data"

    .line 2057
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private buildMetaForUserBotControlMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2021
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;->actionType:Ljava/lang/String;

    const-string v1, "bot_action_type"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2022
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;->botInfo:Ljava/lang/String;

    const-string v1, "chatbot_info"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2023
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;->reason:Ljava/lang/String;

    const-string v1, "bot_ended_reason"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2025
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;->refersMessageId:Ljava/lang/String;

    const-string v0, "referredMessageId"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private conversationInboxRecordToContentValues(Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;)Landroid/content/ContentValues;
    .registers 5

    .line 946
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 947
    iget-wide v1, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->userLocalId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "user_local_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 948
    iget-object v1, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->formName:Ljava/lang/String;

    const-string v2, "form_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v1, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->formEmail:Ljava/lang/String;

    const-string v2, "form_email"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v1, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->description:Ljava/lang/String;

    const-string v2, "description_draft"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-wide v1, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->descriptionTimeStamp:J

    .line 953
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "description_draft_timestamp"

    .line 952
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 954
    iget v1, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->descriptionType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "description_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 955
    iget-object v1, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->archivalText:Ljava/lang/String;

    const-string v2, "archival_text"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object v1, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->replyText:Ljava/lang/String;

    const-string v2, "reply_text"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-boolean v1, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->persistMessageBox:Z

    .line 958
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "persist_message_box"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 959
    iget-object v1, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->lastSyncTimestamp:Ljava/lang/String;

    const-string v2, "since"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object v1, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->hasOlderMessages:Ljava/lang/Boolean;

    if-eqz v1, :cond_6e

    .line 962
    iget-object v1, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->hasOlderMessages:Ljava/lang/Boolean;

    .line 963
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "has_older_messages"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 965
    :cond_6e
    iget-object v1, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->lastConversationsRedactionTime:Ljava/lang/Long;

    const-string v2, "last_conv_redaction_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 969
    :try_start_75
    iget-object p1, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->imageAttachmentDraft:Lcom/helpshift/conversation/dto/AttachmentPickerFile;

    invoke-direct {p0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->getImageAttachmentDraftMeta(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "attachment_draft"

    .line 970
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_75 .. :try_end_80} :catch_81

    goto :goto_89

    :catch_81
    move-exception p1

    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in generating meta string for image attachment"

    .line 973
    invoke-static {v1, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_89
    return-object v0
.end method

.method private cursorToConversationInboxRecord(Landroid/database/Cursor;)Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;
    .registers 20

    move-object/from16 v0, p1

    const-string v1, "user_local_id"

    .line 902
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v1, "form_name"

    .line 904
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "form_email"

    .line 906
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "description_draft"

    .line 908
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "description_draft_timestamp"

    .line 910
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v1, "attachment_draft"

    .line 912
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v15, p0

    .line 913
    invoke-direct {v15, v1}, Lcom/helpshift/common/conversation/ConversationDB;->parseAndGetImageAttachmentDraft(Ljava/lang/String;)Lcom/helpshift/conversation/dto/AttachmentPickerFile;

    move-result-object v10

    const-string v1, "description_type"

    .line 915
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v1, "archival_text"

    .line 917
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v1, "reply_text"

    .line 919
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "persist_message_box"

    .line 921
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_71

    const/4 v14, 0x1

    goto :goto_73

    :cond_71
    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_73
    const-string v1, "since"

    .line 924
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "has_older_messages"

    .line 926
    invoke-static {v0, v2}, Lcom/helpshift/util/DatabaseUtils;->parseBooleanColumnSafe(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v16

    .line 927
    const-class v2, Ljava/lang/Long;

    const-string v15, "last_conv_redaction_time"

    .line 928
    invoke-static {v0, v15, v2}, Lcom/helpshift/util/DatabaseUtils;->parseColumnSafe(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Long;

    .line 930
    new-instance v0, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;

    move-object v2, v0

    move-object v15, v1

    invoke-direct/range {v2 .. v17}, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/dto/AttachmentPickerFile;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;)V

    return-object v0
.end method

.method private cursorToFaq(Landroid/database/Cursor;)Lcom/helpshift/support/Faq;
    .registers 16

    .line 2264
    new-instance v13, Lcom/helpshift/support/Faq;

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v0, "question_id"

    .line 2265
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "publish_id"

    .line 2266
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "language"

    .line 2267
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "section_id"

    .line 2268
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "title"

    .line 2269
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "body"

    .line 2270
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "helpful"

    .line 2271
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v0, "rtl"

    .line 2272
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_60

    goto :goto_61

    :cond_60
    const/4 v10, 0x0

    :goto_61
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v0, "tags"

    .line 2274
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2273
    invoke-static {v0}, Lcom/helpshift/util/HSJSONUtils;->jsonArrayToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    const-string v0, "c_tags"

    .line 2278
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2276
    invoke-static {p1}, Lcom/helpshift/util/HSJSONUtils;->jsonArrayToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/helpshift/support/Faq;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/util/List;Ljava/util/List;)V

    return-object v13
.end method

.method private cursorToMessageDM(Landroid/database/Cursor;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    .registers 35
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    const-string v1, "_id"

    .line 1232
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v1, "conversation_id"

    .line 1233
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v1, "server_id"

    .line 1234
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v1, "body"

    .line 1235
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v1, "meta"

    .line 1236
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    .line 1237
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "created_at"

    .line 1238
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v3, "author_name"

    .line 1239
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "author_role"

    .line 1240
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "author_id"

    .line 1241
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v11, "local_avatar_image_path"

    .line 1243
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "epoch_time_created_at"

    .line 1246
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1247
    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    const-wide/16 v18, 0x0

    if-eqz v15, :cond_83

    move-wide/from16 v15, v18

    goto :goto_87

    .line 1248
    :cond_83
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    :goto_87
    cmp-long v13, v15, v18

    if-gtz v13, :cond_8f

    .line 1249
    invoke-static/range {v17 .. v17}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v15

    :cond_8f
    move-wide/from16 v18, v15

    const-string v13, "md_state"

    .line 1251
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v13, 0x0

    move/from16 v16, v15

    const-string v15, "is_redacted"

    .line 1252
    invoke-static {v0, v15, v13}, Lcom/helpshift/util/DatabaseUtils;->parseBooleanColumnSafe(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v15

    .line 1253
    invoke-static {v2}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->fromValue(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/MessageType;

    move-result-object v0

    .line 1255
    invoke-direct {v6, v1}, Lcom/helpshift/common/conversation/ConversationDB;->jsonify(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 1256
    sget-object v1, Lcom/helpshift/common/conversation/ConversationDB$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_644

    return-object v1

    .line 1531
    :pswitch_b9
    invoke-direct {v6, v12}, Lcom/helpshift/common/conversation/ConversationDB;->readActionCard(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    move-result-object v20

    if-nez v20, :cond_c0

    return-object v1

    :cond_c0
    const-string v0, "original_message_server_id"

    const-string v1, ""

    .line 1535
    invoke-direct {v6, v13, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1536
    new-instance v22, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move/from16 v5, v23

    .line 1537
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    move-object/from16 v11, v22

    move-object v2, v13

    move-object v13, v14

    move-object/from16 v14, v17

    move v3, v15

    move/from16 v1, v16

    move-wide/from16 v15, v18

    move-object/from16 v17, v0

    move-object/from16 v18, v21

    move-object/from16 v19, v20

    invoke-direct/range {v11 .. v19}, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/model/ActionCard;)V

    move/from16 v27, v1

    move/from16 v30, v3

    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object/from16 v7, v22

    move-object v9, v2

    goto/16 :goto_62b

    :pswitch_f9
    move-object v2, v13

    move/from16 v1, v16

    .line 1516
    invoke-direct {v6, v2}, Lcom/helpshift/common/conversation/ConversationDB;->parseBotActionTypeFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v20

    .line 1517
    invoke-direct {v6, v2}, Lcom/helpshift/common/conversation/ConversationDB;->parseBotInfoFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v21

    .line 1518
    invoke-direct {v6, v2}, Lcom/helpshift/common/conversation/ConversationDB;->parseBotEndedReasonFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v22

    .line 1519
    invoke-direct {v6, v2}, Lcom/helpshift/common/conversation/ConversationDB;->parseReferredMessageIdFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v23

    .line 1520
    invoke-direct {v6, v12, v2}, Lcom/helpshift/common/conversation/ConversationDB;->parseAndGetMessageSyncState(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v24

    .line 1522
    new-instance v13, Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v27, v1

    move-object v1, v3

    move-object v3, v2

    move-object v2, v5

    move-object v5, v3

    move-object v3, v4

    move-object v4, v11

    move-object v11, v5

    move/from16 v5, v16

    .line 1524
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    move-object v1, v13

    move v2, v15

    move-object/from16 v15, v17

    move-wide/from16 v16, v18

    move-object/from16 v18, v0

    move-object/from16 v19, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v23

    move/from16 v23, v24

    invoke-direct/range {v13 .. v23}, Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1527
    iput-object v12, v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    move/from16 v30, v2

    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v11

    goto/16 :goto_20c

    :pswitch_143
    move v2, v15

    move/from16 v27, v16

    move-object v15, v13

    .line 1505
    invoke-direct {v6, v15}, Lcom/helpshift/common/conversation/ConversationDB;->parseBotActionTypeFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v20

    .line 1506
    invoke-direct {v6, v15}, Lcom/helpshift/common/conversation/ConversationDB;->parseBotInfoFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v21

    .line 1507
    invoke-direct {v6, v15}, Lcom/helpshift/common/conversation/ConversationDB;->parseHasNextBotFromMeta(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v22

    .line 1508
    new-instance v13, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v2

    move-object v2, v5

    move v5, v3

    move-object v3, v4

    move-object v4, v11

    move v11, v5

    move/from16 v5, v16

    .line 1510
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    move v2, v11

    move-object v11, v13

    move-object v1, v13

    move-object v13, v14

    move-object/from16 v14, v17

    move-object v3, v15

    move-wide/from16 v15, v18

    move-object/from16 v17, v0

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    invoke-direct/range {v11 .. v19}, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;->hasNextBot:Z

    goto :goto_1ab

    :pswitch_17f
    move v2, v15

    move/from16 v27, v16

    move-object v15, v13

    .line 1495
    new-instance v13, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v2

    move-object v2, v5

    move v5, v3

    move-object v3, v4

    move-object v4, v11

    move v11, v5

    move/from16 v5, v16

    .line 1500
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    move v2, v11

    move-object v11, v13

    move-object v1, v13

    move-object v13, v14

    move-object/from16 v14, v17

    move-object v3, v15

    move-wide/from16 v15, v18

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;)V

    .line 1501
    invoke-direct {v6, v3}, Lcom/helpshift/common/conversation/ConversationDB;->parseIsAnsweredFromMeta(Lorg/json/JSONObject;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;->setAnswered(Z)V

    :goto_1ab
    move/from16 v30, v2

    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v7, v1

    move-object v9, v3

    goto/16 :goto_62b

    :pswitch_1b5
    move v2, v15

    move/from16 v27, v16

    move-object v15, v13

    .line 1476
    invoke-direct {v6, v15}, Lcom/helpshift/common/conversation/ConversationDB;->parseImageAttachmentInfoFromMeta(Lorg/json/JSONObject;)Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;

    move-result-object v13

    .line 1477
    new-instance v1, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 p1, v1

    move-object v1, v3

    move v3, v2

    move-object v2, v5

    move v5, v3

    move-object v3, v4

    move-object v4, v11

    move v11, v5

    move/from16 v5, v16

    .line 1482
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    iget-object v1, v13, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->url:Ljava/lang/String;

    iget-object v2, v13, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->fileName:Ljava/lang/String;

    iget-object v3, v13, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->thumbnailUrl:Ljava/lang/String;

    iget-object v4, v13, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->contentType:Ljava/lang/String;

    iget-boolean v5, v13, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->isSecure:Z

    move-wide/from16 v28, v7

    iget v7, v13, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->size:I

    move v8, v11

    move-object/from16 v11, p1

    move/from16 v30, v8

    move-object v8, v13

    move-object v13, v14

    move-object/from16 v14, v17

    move-wide/from16 v31, v9

    move-object v9, v15

    move-wide/from16 v15, v18

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v7

    invoke-direct/range {v11 .. v23}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1489
    iget-object v0, v8, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->filePath:Ljava/lang/String;

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->filePath:Ljava/lang/String;

    .line 1490
    iget-object v0, v8, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->thumbnailFilePath:Ljava/lang/String;

    iput-object v0, v1, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->thumbnailFilePath:Ljava/lang/String;

    .line 1491
    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->updateState()V

    :goto_20c
    move-object v7, v1

    goto/16 :goto_62b

    :pswitch_20f
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1457
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseAttachmentInfoFromMeta(Lorg/json/JSONObject;)Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;

    move-result-object v7

    .line 1458
    new-instance v8, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v10

    .line 1462
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    iget v1, v7, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->size:I

    iget-object v2, v7, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->contentType:Ljava/lang/String;

    iget-object v3, v7, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->url:Ljava/lang/String;

    iget-object v4, v7, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->fileName:Ljava/lang/String;

    iget-boolean v5, v7, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->isSecure:Z

    move-object v11, v8

    move-object v13, v14

    move-object/from16 v14, v17

    move-wide/from16 v15, v18

    move-object/from16 v17, v0

    move/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    invoke-direct/range {v11 .. v22}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1471
    iget-object v0, v7, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->filePath:Ljava/lang/String;

    iput-object v0, v8, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->filePath:Ljava/lang/String;

    .line 1472
    invoke-virtual {v8}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->updateState()V

    goto/16 :goto_316

    :pswitch_252
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1448
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1452
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    .line 1454
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseIsAnsweredFromMeta(Lorg/json/JSONObject;)Z

    move-result v1

    move-object v11, v7

    move-object v13, v14

    move-object/from16 v14, v17

    move-wide/from16 v15, v18

    move-object/from16 v17, v0

    move/from16 v18, v1

    invoke-direct/range {v11 .. v18}, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Z)V

    goto/16 :goto_62b

    :pswitch_27c
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1428
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseAttachmentInfoFromMeta(Lorg/json/JSONObject;)Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;

    move-result-object v7

    .line 1429
    new-instance v8, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v10

    .line 1432
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    iget v1, v7, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->size:I

    iget-object v2, v7, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->contentType:Ljava/lang/String;

    iget-object v3, v7, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->url:Ljava/lang/String;

    iget-object v4, v7, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->fileName:Ljava/lang/String;

    iget-boolean v5, v7, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->isSecure:Z

    move-object v13, v8

    move-object/from16 v15, v17

    move-wide/from16 v16, v18

    move-object/from16 v18, v0

    move/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    invoke-direct/range {v13 .. v23}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1441
    iget-object v0, v7, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->filePath:Ljava/lang/String;

    iput-object v0, v8, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->filePath:Ljava/lang/String;

    .line 1442
    iput-object v12, v8, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->serverId:Ljava/lang/String;

    .line 1443
    iget-boolean v0, v7, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->isZipped:Z

    iput-boolean v0, v8, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->isZipped:Z

    .line 1444
    iget-boolean v0, v7, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->isRejected:Z

    iput-boolean v0, v8, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->isRejected:Z

    goto :goto_316

    :pswitch_2c4
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1408
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseImageAttachmentInfoFromMeta(Lorg/json/JSONObject;)Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;

    move-result-object v7

    .line 1409
    new-instance v8, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v10

    .line 1412
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    iget-object v1, v7, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->contentType:Ljava/lang/String;

    iget-object v2, v7, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->thumbnailUrl:Ljava/lang/String;

    iget-object v3, v7, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->fileName:Ljava/lang/String;

    iget-object v4, v7, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->url:Ljava/lang/String;

    iget v5, v7, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->size:I

    iget-boolean v10, v7, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->isSecure:Z

    move-object v13, v8

    move-object/from16 v15, v17

    move-wide/from16 v16, v18

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v10

    invoke-direct/range {v13 .. v24}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1420
    iget-object v0, v7, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->filePath:Ljava/lang/String;

    iput-object v0, v8, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->filePath:Ljava/lang/String;

    .line 1421
    iput-object v12, v8, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->serverId:Ljava/lang/String;

    .line 1422
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseReferredMessageIdFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->setRefersMessageId(Ljava/lang/String;)V

    .line 1423
    iget-boolean v0, v7, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->isZipped:Z

    iput-boolean v0, v8, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->isZipped:Z

    .line 1424
    iget-boolean v0, v7, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->isRejected:Z

    iput-boolean v0, v8, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->isRejected:Z

    :goto_316
    move-object v7, v8

    goto/16 :goto_62b

    :pswitch_319
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1398
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1401
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    .line 1403
    invoke-direct {v6, v12, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseAndGetMessageSyncState(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    move-object v13, v7

    move-object/from16 v15, v17

    move-wide/from16 v16, v18

    move-object/from16 v18, v0

    move/from16 v19, v1

    invoke-direct/range {v13 .. v19}, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;I)V

    .line 1405
    iput-object v12, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    goto/16 :goto_62b

    :pswitch_344
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1387
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1390
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    .line 1392
    invoke-direct {v6, v12, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseAndGetMessageSyncState(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    move-object v13, v7

    move-object/from16 v15, v17

    move-wide/from16 v16, v18

    move-object/from16 v18, v0

    move/from16 v19, v1

    invoke-direct/range {v13 .. v19}, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;I)V

    .line 1394
    iput-object v12, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    goto/16 :goto_62b

    :pswitch_36f
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1377
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1380
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    .line 1381
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseReferredMessageIdFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 1382
    invoke-direct {v6, v12, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseAndGetMessageSyncState(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v20

    move-object v13, v7

    move-object/from16 v15, v17

    move-wide/from16 v16, v18

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    invoke-direct/range {v13 .. v20}, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;I)V

    .line 1383
    iput-object v12, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    .line 1384
    move-object v0, v7

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;

    invoke-direct {v6, v0, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseAndSetFollowUpRejectedDataFromMeta(Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;Lorg/json/JSONObject;)V

    goto/16 :goto_62b

    :pswitch_3a4
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1368
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1371
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    .line 1372
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseReferredMessageIdFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 1373
    invoke-direct {v6, v12, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseAndGetMessageSyncState(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v20

    move-object v13, v7

    move-object/from16 v15, v17

    move-wide/from16 v16, v18

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    invoke-direct/range {v13 .. v20}, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;I)V

    .line 1374
    iput-object v12, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    goto/16 :goto_62b

    :pswitch_3d3
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1359
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1363
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    .line 1365
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseIsAnsweredFromMeta(Lorg/json/JSONObject;)Z

    move-result v1

    move-object v11, v7

    move-object v13, v14

    move-object/from16 v14, v17

    move-wide/from16 v15, v18

    move-object/from16 v17, v0

    move/from16 v18, v1

    invoke-direct/range {v11 .. v18}, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Z)V

    goto/16 :goto_62b

    :pswitch_3fd
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1349
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1352
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    .line 1354
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseReferredMessageIdFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 1355
    invoke-direct {v6, v12, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseAndGetMessageSyncState(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v20

    move-object v13, v7

    move-object/from16 v15, v17

    move-wide/from16 v16, v18

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    invoke-direct/range {v13 .. v20}, Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;I)V

    .line 1356
    iput-object v12, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    goto/16 :goto_62b

    :pswitch_42c
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1335
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageWithOptionInputDM;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1337
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    .line 1338
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseFAQListFromMeta(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 1339
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseFAQListSourceFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 1340
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseBotInfoFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v20

    .line 1341
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputRequiredFromMeta(Lorg/json/JSONObject;)Z

    move-result v21

    .line 1342
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputLabelFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v22

    .line 1343
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputSkipLabelFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v23

    .line 1344
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputOptionsFromMeta(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v24

    .line 1345
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseIsSuggestionsReadEventSent(Lorg/json/JSONObject;)Z

    move-result v25

    .line 1346
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseSuggestionReadFAQPublishId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v26

    move-object v11, v7

    move-object v13, v14

    move-object/from16 v14, v17

    move-wide/from16 v15, v18

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v11 .. v26}, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageWithOptionInputDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    goto/16 :goto_62b

    :pswitch_478
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1327
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1328
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    .line 1329
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseFAQListFromMeta(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 1330
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseFAQListSourceFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 1331
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseIsSuggestionsReadEventSent(Lorg/json/JSONObject;)Z

    move-result v20

    .line 1332
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseSuggestionReadFAQPublishId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v21

    move-object v11, v7

    move-object v13, v14

    move-object/from16 v14, v17

    move-wide/from16 v15, v18

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v11 .. v21}, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_62b

    :pswitch_4b0
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1312
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputOptionsFromMeta(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v22

    .line 1313
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1316
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    .line 1317
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseBotInfoFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 1318
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputRequiredFromMeta(Lorg/json/JSONObject;)Z

    move-result v2

    .line 1319
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputLabelFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v20

    .line 1320
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputSkipLabelFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v21

    .line 1322
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v6, v9, v3}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputOptionTypeFromMeta(Lorg/json/JSONObject;I)Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    move-result-object v23

    move-object v11, v7

    move-object v13, v14

    move-object/from16 v14, v17

    move-wide/from16 v15, v18

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move/from16 v19, v2

    invoke-direct/range {v11 .. v23}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;)V

    .line 1323
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseAttachmentCountFromMeta(Lorg/json/JSONObject;)I

    move-result v0

    iput v0, v7, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->attachmentCount:I

    goto/16 :goto_62b

    :pswitch_4fa
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1300
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1301
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    .line 1303
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseBotInfoFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 1304
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputPlaceholderFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 1305
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputRequiredFromMeta(Lorg/json/JSONObject;)Z

    move-result v20

    .line 1306
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputLabelFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v21

    .line 1307
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputSkipLabelFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v22

    .line 1308
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputKeyboardFromMeta(Lorg/json/JSONObject;)I

    move-result v23

    .line 1309
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseIsMessageEmptyFromMeta(Lorg/json/JSONObject;)Z

    move-result v24

    move-object v11, v7

    move-object v13, v14

    move-object/from16 v14, v17

    move-wide/from16 v15, v18

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v11 .. v24}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_62b

    :pswitch_53e
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1296
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1297
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    move-object v11, v7

    move-object v13, v14

    move-object/from16 v14, v17

    move-wide/from16 v15, v18

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;)V

    goto/16 :goto_62b

    :pswitch_562
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1289
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;

    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseIntentLabelFromMeta(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v16

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1291
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v20

    move-object v15, v7

    invoke-direct/range {v15 .. v20}, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;-><init>(Ljava/util/List;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;)V

    .line 1292
    iput-object v14, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->body:Ljava/lang/String;

    .line 1293
    iput-object v12, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    goto/16 :goto_62b

    :pswitch_587
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1278
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1280
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    .line 1281
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseBotInfoFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 1282
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseIsResponseSkippedFromMeta(Lorg/json/JSONObject;)Z

    move-result v20

    .line 1283
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseSelectedOptionDataFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v21

    .line 1284
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseReferredMessageIdFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v22

    .line 1285
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseReferredMessageTypeFromMeta(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/MessageType;

    move-result-object v23

    move-object v13, v7

    move-object/from16 v15, v17

    move-wide/from16 v16, v18

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    invoke-direct/range {v13 .. v23}, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/MessageType;)V

    .line 1286
    iput-object v12, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    goto/16 :goto_62b

    :pswitch_5c2
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1263
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1265
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    .line 1266
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseInputKeyboardFromMeta(Lorg/json/JSONObject;)I

    move-result v1

    .line 1267
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseBotInfoFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v20

    .line 1268
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseIsResponseSkippedFromMeta(Lorg/json/JSONObject;)Z

    move-result v21

    .line 1269
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseReferredMessageIdFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v22

    .line 1270
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseIsMessageEmptyFromMeta(Lorg/json/JSONObject;)Z

    move-result v23

    move-object v13, v7

    move-object/from16 v15, v17

    move-wide/from16 v16, v18

    move-object/from16 v18, v0

    move/from16 v19, v1

    invoke-direct/range {v13 .. v23}, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;ILjava/lang/String;ZLjava/lang/String;Z)V

    .line 1272
    iput-object v12, v7, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->serverId:Ljava/lang/String;

    .line 1273
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseDateTimeFromMeta(Lorg/json/JSONObject;)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->dateInMillis:J

    .line 1274
    invoke-direct {v6, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseTimeZoneIdFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->timeZoneId:Ljava/lang/String;

    goto :goto_62b

    :pswitch_608
    move-wide/from16 v28, v7

    move-wide/from16 v31, v9

    move-object v9, v13

    move/from16 v30, v15

    move/from16 v27, v16

    .line 1258
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v11

    move v5, v8

    .line 1259
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/common/conversation/ConversationDB;->getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    move-object v13, v7

    move-object/from16 v15, v17

    move-wide/from16 v16, v18

    move-object/from16 v18, v0

    invoke-direct/range {v13 .. v18}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;)V

    .line 1260
    iput-object v12, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    .line 1547
    :goto_62b
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 1548
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    move/from16 v0, v27

    .line 1549
    iput v0, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->deliveryState:I

    move/from16 v0, v30

    .line 1550
    iput-boolean v0, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isRedacted:Z

    .line 1551
    invoke-direct {v6, v7, v9}, Lcom/helpshift/common/conversation/ConversationDB;->parseAndSetMessageSeenData(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V

    return-object v7

    nop

    :pswitch_data_644
    .packed-switch 0x1
        :pswitch_608
        :pswitch_5c2
        :pswitch_587
        :pswitch_562
        :pswitch_53e
        :pswitch_4fa
        :pswitch_4b0
        :pswitch_478
        :pswitch_42c
        :pswitch_3fd
        :pswitch_3d3
        :pswitch_3a4
        :pswitch_36f
        :pswitch_344
        :pswitch_319
        :pswitch_2c4
        :pswitch_27c
        :pswitch_252
        :pswitch_20f
        :pswitch_1b5
        :pswitch_17f
        :pswitch_143
        :pswitch_f9
        :pswitch_b9
    .end packed-switch
.end method

.method private cursorToReadableConversation(Landroid/database/Cursor;)Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 32

    move-object/from16 v0, p1

    const-string v1, "_id"

    .line 1061
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "user_local_id"

    .line 1063
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "server_id"

    .line 1064
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "publish_id"

    .line 1066
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v5, "uuid"

    .line 1068
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    .line 1069
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v6, "message_cursor"

    .line 1071
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v6, "start_new_conversation_action"

    .line 1073
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_5b

    const/4 v15, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v15, 0x0

    :goto_5c
    const-string v6, "meta"

    .line 1076
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v6, "created_at"

    .line 1078
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v6, "epoch_time_created_at"

    .line 1080
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v6, "updated_at"

    .line 1082
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v6, "pre_conv_server_id"

    .line 1085
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v6, "last_user_activity_time"

    .line 1087
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v19, v10

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v6, "issue_type"

    .line 1089
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v6, "full_privacy_enabled"

    const/4 v8, 0x0

    .line 1091
    invoke-static {v0, v6, v8}, Lcom/helpshift/util/DatabaseUtils;->parseBooleanColumnSafe(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v6

    const-string v8, "state"

    .line 1093
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1094
    invoke-static {v8}, Lcom/helpshift/conversation/dto/IssueState;->fromInt(I)Lcom/helpshift/conversation/dto/IssueState;

    move-result-object v8

    move/from16 v22, v6

    const-string v6, "is_redacted"

    move-object/from16 v23, v8

    const/4 v8, 0x0

    .line 1096
    invoke-static {v0, v6, v8}, Lcom/helpshift/util/DatabaseUtils;->parseBooleanColumnSafe(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v8

    const-string v6, "acid"

    .line 1097
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v6

    .line 1100
    const-class v6, Ljava/lang/Long;

    move/from16 v24, v8

    const-string v8, "resolution_expiry_at"

    .line 1101
    invoke-static {v0, v8, v6}, Lcom/helpshift/util/DatabaseUtils;->parseColumnSafe(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/Long;

    .line 1103
    const-class v6, Ljava/lang/Long;

    move-object/from16 v25, v8

    const-string v8, "csat_expiry_at"

    .line 1104
    invoke-static {v0, v8, v6}, Lcom/helpshift/util/DatabaseUtils;->parseColumnSafe(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1106
    new-instance v8, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-object/from16 p1, v0

    move/from16 v0, v22

    move-object v6, v8

    move-object/from16 v22, v23

    move/from16 v26, v24

    move-object/from16 v27, v25

    move/from16 v23, v0

    move-object v0, v8

    move-object/from16 v8, v22

    move-wide/from16 v28, v9

    move-object/from16 v9, v19

    move-wide/from16 v24, v2

    move-object v2, v11

    move-wide/from16 v10, v16

    move-object v3, v12

    move-object/from16 v12, v18

    move-object/from16 v17, v3

    move v3, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v21

    invoke-direct/range {v6 .. v16}, Lcom/helpshift/conversation/activeconversation/model/Conversation;-><init>(Ljava/lang/String;Lcom/helpshift/conversation/dto/IssueState;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iput-object v4, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    .line 1116
    iput-object v2, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    .line 1117
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->setLocalId(J)V

    .line 1118
    iput-object v5, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localUUID:Ljava/lang/String;

    move-object/from16 v1, v22

    .line 1119
    iput-object v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    move-wide/from16 v1, v24

    .line 1120
    iput-wide v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->userLocalId:J

    .line 1121
    iput-boolean v3, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isStartNewConversationClicked:Z

    move-wide/from16 v1, v28

    .line 1122
    iput-wide v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->lastUserActivityTime:J

    move/from16 v1, v23

    .line 1123
    iput-boolean v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->wasFullPrivacyEnabledAtCreation:Z

    move/from16 v1, v26

    .line 1124
    iput-boolean v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    move-object/from16 v1, v21

    .line 1125
    iput-object v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    move-object/from16 v6, v27

    .line 1126
    iput-object v6, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->resolutionExpiryAt:Ljava/lang/Long;

    move-object/from16 v1, p1

    .line 1127
    iput-object v1, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatExpiryAt:Ljava/lang/Long;

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    .line 1128
    invoke-direct {v1, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->parseAndSetMetaData(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;)V

    return-object v0
.end method

.method private exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT COUNT(*) FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " WHERE "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " LIMIT 1"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-lez v0, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    return p1
.end method

.method private static faqToContentValues(Lcom/helpshift/support/Faq;)Landroid/content/ContentValues;
    .registers 4

    .line 170
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 171
    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "question_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/helpshift/support/Faq;->publish_id:Ljava/lang/String;

    const-string v2, "publish_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/helpshift/support/Faq;->language:Ljava/lang/String;

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/helpshift/support/Faq;->section_publish_id:Ljava/lang/String;

    const-string v2, "section_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/helpshift/support/Faq;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/helpshift/support/Faq;->body:Ljava/lang/String;

    const-string v2, "body"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget v1, p0, Lcom/helpshift/support/Faq;->is_helpful:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "helpful"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    iget-object v1, p0, Lcom/helpshift/support/Faq;->is_rtl:Ljava/lang/Boolean;

    const-string v2, "rtl"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 179
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tags"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v1, Lorg/json/JSONArray;

    .line 181
    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getCategoryTags()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "c_tags"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/Author;
    .registers 6

    if-eqz p5, :cond_5

    .line 1220
    sget-object p3, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->LOCAL_USER:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    goto :goto_9

    .line 1223
    :cond_5
    invoke-static {p3}, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->getEnum(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    move-result-object p3

    .line 1225
    :goto_9
    new-instance p5, Lcom/helpshift/conversation/activeconversation/message/Author;

    invoke-direct {p5, p1, p2, p3}, Lcom/helpshift/conversation/activeconversation/message/Author;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)V

    .line 1226
    iput-object p4, p5, Lcom/helpshift/conversation/activeconversation/message/Author;->localAvatarImagePath:Ljava/lang/String;

    return-object p5
.end method

.method private getBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .registers 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1726
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private getConversationMeta(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1033
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    .line 1034
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1035
    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatFeedback:Ljava/lang/String;

    .line 1036
    iget v3, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatRating:I

    const-string v4, "csat_feedback"

    .line 1037
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "csat_rating"

    .line 1038
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1039
    invoke-virtual {v0}, Lcom/helpshift/conversation/states/ConversationCSATState;->getValue()I

    move-result v0

    const-string v2, "csat_state"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1040
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->shouldIncrementMessageCount:Z

    const-string v2, "increment_message_count"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1041
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isConversationEndedDelegateSent:Z

    const-string v2, "ended_delegate_sent"

    .line 1042
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1043
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isAutoFilledPreIssue:Z

    const-string v2, "is_autofilled_preissue"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1046
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentTreeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1047
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentTreeId:Ljava/lang/String;

    const-string v2, "smart_intent_tree_id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1049
    :cond_42
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentUserQuery:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1050
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentUserQuery:Ljava/lang/String;

    const-string v2, "smart_intent_user_query"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1052
    :cond_51
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentIds:Ljava/util/List;

    invoke-static {p1}, Lcom/helpshift/util/HSJSONUtils;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 1053
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5f

    :cond_5e
    const/4 p1, 0x0

    .line 1054
    :goto_5f
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v0, "smart_intent_ids"

    .line 1055
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1057
    :cond_6a
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getImageAttachmentDraftMeta(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1022
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1023
    iget-object v1, p1, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->originalFileName:Ljava/lang/String;

    const-string v2, "image_draft_orig_name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1024
    iget-object v1, p1, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->originalFileSize:Ljava/lang/Long;

    const-string v2, "image_draft_orig_size"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1025
    iget-object v1, p1, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->filePath:Ljava/lang/String;

    const-string v2, "image_draft_file_path"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1026
    iget v1, p1, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->attachmentType:I

    const-string v2, "attachment_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1027
    iget-boolean p1, p1, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->isFileCompressionAndCopyingDone:Z

    const-string v1, "image_copy_done"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1029
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/helpshift/common/conversation/ConversationDB;
    .registers 3

    const-class v0, Lcom/helpshift/common/conversation/ConversationDB;

    monitor-enter v0

    .line 163
    :try_start_3
    sget-object v1, Lcom/helpshift/common/conversation/ConversationDB;->instance:Lcom/helpshift/common/conversation/ConversationDB;

    if-nez v1, :cond_e

    .line 164
    new-instance v1, Lcom/helpshift/common/conversation/ConversationDB;

    invoke-direct {v1, p0}, Lcom/helpshift/common/conversation/ConversationDB;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/helpshift/common/conversation/ConversationDB;->instance:Lcom/helpshift/common/conversation/ConversationDB;

    .line 166
    :cond_e
    sget-object p0, Lcom/helpshift/common/conversation/ConversationDB;->instance:Lcom/helpshift/common/conversation/ConversationDB;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getIntFromJson(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .registers 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1718
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private getMessageMeta(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1843
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 1845
    sget-object v1, Lcom/helpshift/common/conversation/ConversationDB$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1b2

    move-object v0, v1

    goto/16 :goto_1aa

    .line 1986
    :pswitch_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1987
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    .line 1988
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForActionCardMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;)V

    goto/16 :goto_1aa

    .line 1964
    :pswitch_1d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1965
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;

    .line 1966
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForUserBotControlMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;)V

    .line 1967
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForAutoRetriableMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;)V

    goto/16 :goto_1aa

    .line 1960
    :pswitch_2c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1961
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;

    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForAdminBotControlMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;)V

    goto/16 :goto_1aa

    .line 1917
    :pswitch_38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1918
    move-object v2, p1

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;

    .line 1919
    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;->isAnswered()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForIsAnswered(Lorg/json/JSONObject;Z)V

    .line 1920
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForMessageSeenData(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    goto/16 :goto_1aa

    .line 1947
    :pswitch_4c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1948
    move-object v2, p1

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForImageAttachmentMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;)V

    .line 1949
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForMessageSeenData(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    goto/16 :goto_1aa

    .line 1941
    :pswitch_5c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1942
    move-object v2, p1

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;

    .line 1943
    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildJsonObjectForAttachmentMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V

    .line 1944
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForMessageSeenData(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    goto/16 :goto_1aa

    .line 1910
    :pswitch_6c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1911
    move-object v2, p1

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;

    .line 1913
    iget-boolean v2, v2, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;->isAnswered:Z

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForIsAnswered(Lorg/json/JSONObject;Z)V

    .line 1914
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForMessageSeenData(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    goto/16 :goto_1aa

    .line 1956
    :pswitch_7e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1957
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildJsonObjectForAttachmentMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V

    goto/16 :goto_1aa

    .line 1952
    :pswitch_8a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1953
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForScreenshotAttachmentMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;)V

    goto/16 :goto_1aa

    .line 1975
    :pswitch_96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1976
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;

    .line 1977
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForAutoRetriableMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;)V

    goto/16 :goto_1aa

    .line 1970
    :pswitch_a2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1971
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;

    .line 1972
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForAutoRetriableMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;)V

    goto/16 :goto_1aa

    .line 1929
    :pswitch_ae
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1930
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;

    .line 1931
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForFollowUpRejected(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;)V

    .line 1932
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForAutoRetriableMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;)V

    goto/16 :goto_1aa

    .line 1923
    :pswitch_bd
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1924
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;

    .line 1925
    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;->referredMessageId:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForReferredMessageId(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1926
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForAutoRetriableMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;)V

    goto/16 :goto_1aa

    .line 1935
    :pswitch_ce
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1936
    move-object v2, p1

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;

    .line 1937
    iget-boolean v2, v2, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;->isAnswered:Z

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForIsAnswered(Lorg/json/JSONObject;Z)V

    .line 1938
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForMessageSeenData(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    goto/16 :goto_1aa

    .line 1904
    :pswitch_e0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1905
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;

    .line 1906
    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;->referredMessageId:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForReferredMessageId(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1907
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForAutoRetriableMessage(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;)V

    goto/16 :goto_1aa

    .line 1896
    :pswitch_f1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1897
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForMessageSeenData(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 1898
    move-object v2, p1

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForFAQList(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;)V

    .line 1899
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageWithOptionInputDM;

    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageWithOptionInputDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForInput(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;)V

    .line 1900
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForIsSuggestionsReadEvent(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;)V

    .line 1901
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForFAQListSource(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;)V

    goto/16 :goto_1aa

    .line 1889
    :pswitch_10e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1890
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForMessageSeenData(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 1891
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;

    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForFAQList(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;)V

    .line 1892
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForIsSuggestionsReadEvent(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;)V

    .line 1893
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForFAQListSource(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;)V

    goto/16 :goto_1aa

    .line 1883
    :pswitch_123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1884
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForMessageSeenData(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 1885
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;

    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForInput(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;)V

    .line 1886
    iget p1, p1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->attachmentCount:I

    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForAttachmentCount(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    goto :goto_1aa

    .line 1875
    :pswitch_138
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1876
    move-object v2, p1

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;

    .line 1878
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForMessageSeenData(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 1879
    iget-object p1, v2, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/TextInput;

    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForInput(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/input/TextInput;)V

    .line 1880
    iget-boolean p1, v2, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;->isMessageEmpty:Z

    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForIsMessageEmpty(Lorg/json/JSONObject;Z)V

    goto :goto_1aa

    .line 1871
    :pswitch_14e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1872
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForMessageSeenData(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    goto :goto_1aa

    .line 1980
    :pswitch_157
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1981
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;

    .line 1982
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForIntentLabels(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;)V

    goto :goto_1aa

    .line 1859
    :pswitch_162
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1860
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;

    .line 1862
    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;->botInfo:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForBotInfo(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1863
    iget-boolean v2, p1, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;->skipped:Z

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForIsResponseSkipped(Lorg/json/JSONObject;Z)V

    .line 1865
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;->getReferredMessageId()Ljava/lang/String;

    move-result-object v2

    .line 1864
    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForReferredMessageId(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1866
    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;->referredMessageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForReferredMessageType(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/MessageType;)V

    .line 1868
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;->optionData:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForSelectedOptionData(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1aa

    .line 1847
    :pswitch_185
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1848
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;

    .line 1850
    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->botInfo:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForBotInfo(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1851
    iget v2, p1, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->keyboard:I

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForInputKeyboard(Lorg/json/JSONObject;I)V

    .line 1852
    iget-boolean v2, p1, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->skipped:Z

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForIsResponseSkipped(Lorg/json/JSONObject;Z)V

    .line 1854
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->getReferredMessageId()Ljava/lang/String;

    move-result-object v2

    .line 1853
    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForReferredMessageId(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1855
    iget-boolean v2, p1, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->isMessageEmpty:Z

    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForIsMessageEmpty(Lorg/json/JSONObject;Z)V

    .line 1856
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->buildMetaForDateTime(Lorg/json/JSONObject;Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;)V

    :goto_1aa
    if-nez v0, :cond_1ad

    return-object v1

    .line 1994
    :cond_1ad
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_1b2
    .packed-switch 0x2
        :pswitch_185
        :pswitch_162
        :pswitch_157
        :pswitch_14e
        :pswitch_138
        :pswitch_123
        :pswitch_10e
        :pswitch_f1
        :pswitch_e0
        :pswitch_ce
        :pswitch_bd
        :pswitch_ae
        :pswitch_a2
        :pswitch_96
        :pswitch_8a
        :pswitch_7e
        :pswitch_6c
        :pswitch_5c
        :pswitch_4c
        :pswitch_38
        :pswitch_2c
        :pswitch_1d
        :pswitch_11
    .end packed-switch
.end method

.method private getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1722
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private insertActionCard(Landroid/database/sqlite/SQLiteDatabase;Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;)V
    .registers 8

    .line 544
    :try_start_0
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->actionCard:Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->serverId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->actionCardToContentValues(Lcom/helpshift/conversation/activeconversation/model/ActionCard;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "action_cards"

    const/4 v2, 0x0

    .line 545
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 546
    iget-object v3, p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->actionCard:Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->actionCardLocalId:Ljava/lang/Long;

    .line 547
    iget-object v3, p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->actionCard:Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    iget-object v3, v3, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->action:Lcom/helpshift/conversation/activeconversation/model/Action;

    invoke-direct {p0, v3, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->actionToContentValues(Lcom/helpshift/conversation/activeconversation/model/Action;J)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "actions"

    .line 548
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 549
    iget-object p1, p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->actionCard:Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->action:Lcom/helpshift/conversation/activeconversation/model/Action;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Action;->actionLocalId:Ljava/lang/Long;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_38

    :catch_30
    move-exception p1

    const-string p2, "Helpshift_ConverDB"

    const-string v0, "Error in insert action card"

    .line 553
    invoke-static {p2, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_38
    return-void
.end method

.method private insertMessageInternal(Landroid/database/sqlite/SQLiteDatabase;Lcom/helpshift/conversation/activeconversation/message/MessageDM;Landroid/content/ContentValues;)J
    .registers 7

    const-string v0, "messages"

    const/4 v1, 0x0

    .line 535
    invoke-virtual {p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 536
    iget-object p3, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_ACTION_CARD:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne p3, v2, :cond_12

    .line 537
    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    invoke-direct {p0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->insertActionCard(Landroid/database/sqlite/SQLiteDatabase;Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;)V

    :cond_12
    return-wide v0
.end method

.method private jsonify(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    .line 1800
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1802
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 1807
    :cond_c
    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_13

    move-object v0, v1

    goto :goto_1b

    :catch_13
    move-exception p1

    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Exception in jsonify"

    .line 1810
    invoke-static {v1, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b
    return-object v0
.end method

.method private parseAndGetImageAttachmentDraft(Ljava/lang/String;)Lcom/helpshift/conversation/dto/AttachmentPickerFile;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1196
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "image_draft_orig_name"

    .line 1197
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "image_draft_orig_size"

    const-wide/16 v3, -0x1

    .line 1198
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "image_draft_file_path"

    .line 1199
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "attachment_type"

    .line 1200
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "image_copy_done"

    const/4 v8, 0x0

    .line 1202
    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1203
    new-instance v7, Lcom/helpshift/conversation/dto/AttachmentPickerFile;

    .line 1204
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v8, v3

    if-nez v10, :cond_39

    move-object v2, v0

    :cond_39
    invoke-direct {v7, v5, p1, v2}, Lcom/helpshift/conversation/dto/AttachmentPickerFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_3c} :catch_43

    .line 1205
    :try_start_3c
    iput-boolean v1, v7, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->isFileCompressionAndCopyingDone:Z

    .line 1206
    iput v6, v7, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->attachmentType:I
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_40} :catch_41

    goto :goto_4c

    :catch_41
    move-exception p1

    goto :goto_45

    :catch_43
    move-exception p1

    move-object v7, v0

    :goto_45
    const-string v0, "Helpshift_ConverDB"

    const-string v1, "Error in parseAndGetImageAttachmentDraft"

    .line 1209
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4c
    return-object v7
.end method

.method private parseAndGetMessageSyncState(Ljava/lang/String;Lorg/json/JSONObject;)I
    .registers 4
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1781
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x2

    return p1

    :cond_8
    const/4 p1, 0x1

    const-string v0, "message_sync_status"

    .line 1785
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private parseAndSetFollowUpRejectedDataFromMeta(Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;Lorg/json/JSONObject;)V
    .registers 6
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "rejected_reason"

    .line 1834
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "rejected_conv_id"

    const/4 v2, 0x0

    .line 1835
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1837
    iput v0, p1, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;->reason:I

    .line 1838
    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;->openConversationId:Ljava/lang/String;

    return-void
.end method

.method private parseAndSetMessageSeenData(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V
    .registers 7
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "read_at"

    const-string v1, ""

    .line 1790
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "seen_cursor"

    const/4 v2, 0x0

    .line 1791
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "seen_sync_status"

    const/4 v3, 0x0

    .line 1792
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 1793
    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->seenAtMessageCursor:Ljava/lang/String;

    .line 1794
    iput-boolean p2, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isMessageSeenSynced:Z

    .line 1795
    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->readAt:Ljava/lang/String;

    return-void
.end method

.method private parseAndSetMetaData(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;)V
    .registers 9

    const-string v0, "smart_intent_ids"

    if-nez p2, :cond_5

    return-void

    .line 1165
    :cond_5
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "csat_rating"

    const/4 v2, 0x0

    .line 1166
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    const-string v3, "csat_state"

    .line 1167
    sget-object v4, Lcom/helpshift/conversation/states/ConversationCSATState;->NONE:Lcom/helpshift/conversation/states/ConversationCSATState;

    invoke-virtual {v4}, Lcom/helpshift/conversation/states/ConversationCSATState;->getValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "csat_feedback"

    const/4 v5, 0x0

    .line 1168
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1169
    iput p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatRating:I

    .line 1170
    invoke-static {v3}, Lcom/helpshift/conversation/states/ConversationCSATState;->fromInt(I)Lcom/helpshift/conversation/states/ConversationCSATState;

    move-result-object p2

    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    .line 1171
    iput-object v4, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatFeedback:Ljava/lang/String;

    const-string p2, "increment_message_count"

    .line 1174
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->shouldIncrementMessageCount:Z

    const-string p2, "ended_delegate_sent"

    .line 1177
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isConversationEndedDelegateSent:Z

    const-string p2, "is_autofilled_preissue"

    .line 1179
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isAutoFilledPreIssue:Z

    const-string p2, "smart_intent_tree_id"

    .line 1180
    invoke-virtual {v1, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentTreeId:Ljava/lang/String;

    const-string p2, "smart_intent_user_query"

    .line 1181
    invoke-virtual {v1, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentUserQuery:Ljava/lang/String;

    .line 1182
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5d

    goto :goto_65

    .line 1183
    :cond_5d
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/helpshift/util/HSJSONUtils;->jsonArrayToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    :goto_65
    iput-object v5, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentIds:Ljava/util/List;
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_67} :catch_68

    goto :goto_70

    :catch_68
    move-exception p1

    const-string p2, "Helpshift_ConverDB"

    const-string v0, "Error in parseAndSetMetaData"

    .line 1186
    invoke-static {p2, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_70
    return-void
.end method

.method private parseAttachmentCountFromMeta(Lorg/json/JSONObject;)I
    .registers 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "attachment_count"

    const/4 v1, 0x0

    .line 1714
    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getIntFromJson(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private parseAttachmentInfoFromMeta(Lorg/json/JSONObject;)Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;
    .registers 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1824
    new-instance v0, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;-><init>(Lcom/helpshift/common/conversation/ConversationDB;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private parseBotActionTypeFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    const-string v0, "bot_action_type"

    const-string v1, ""

    .line 1653
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseBotEndedReasonFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    const-string v0, "bot_ended_reason"

    const-string v1, ""

    .line 1658
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseBotInfoFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "{}"

    const-string v1, "chatbot_info"

    .line 1764
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseDateTimeFromMeta(Lorg/json/JSONObject;)J
    .registers 5
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "dt"

    const-wide/16 v1, 0x0

    .line 1769
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private parseFAQListFromMeta(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 9
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM$FAQ;",
            ">;"
        }
    .end annotation

    .line 1670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v1, "faqs"

    .line 1672
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 1673
    :goto_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 1674
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1675
    new-instance v3, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM$FAQ;

    const-string v4, "faq_title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "faq_publish_id"

    .line 1676
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "faq_language"

    .line 1677
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM$FAQ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_30} :catch_33

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :catch_33
    :cond_33
    return-object v0
.end method

.method private parseFAQListSourceFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    const-string v0, "faq_source"

    .line 1689
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_9

    :catch_7
    const-string p1, ""

    :goto_9
    return-object p1
.end method

.method private parseHasNextBotFromMeta(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .registers 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "has_next_bot"

    const/4 v1, 0x0

    .line 1777
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private parseImageAttachmentInfoFromMeta(Lorg/json/JSONObject;)Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;
    .registers 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1828
    new-instance v0, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;-><init>(Lcom/helpshift/common/conversation/ConversationDB;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private parseInputKeyboardFromMeta(Lorg/json/JSONObject;)I
    .registers 4

    const-string v0, "input_keyboard"

    const/4 v1, 0x1

    .line 1742
    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getIntFromJson(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private parseInputLabelFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    const-string v0, "input_label"

    const-string v1, ""

    .line 1750
    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseInputOptionTypeFromMeta(Lorg/json/JSONObject;I)Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;
    .registers 5

    const-string v0, "option_type"

    const-string v1, ""

    .line 1645
    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->getType(Ljava/lang/String;I)Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    move-result-object p1

    return-object p1
.end method

.method private parseInputOptionsFromMeta(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 8
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;",
            ">;"
        }
    .end annotation

    .line 1698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v1, "input_options"

    .line 1700
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 1701
    :goto_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 1702
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1703
    new-instance v3, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;

    const-string v4, "option_title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "option_data"

    .line 1704
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2a} :catch_2d

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :catch_2d
    :cond_2d
    return-object v0
.end method

.method private parseInputPlaceholderFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    const-string v0, "input_placeholder"

    const-string v1, ""

    .line 1758
    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseInputRequiredFromMeta(Lorg/json/JSONObject;)Z
    .registers 4

    const-string v0, "input_required"

    const/4 v1, 0x0

    .line 1754
    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private parseInputSkipLabelFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    const-string v0, "input_skip_label"

    const-string v1, ""

    .line 1746
    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseIntentLabelFromMeta(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "intent_labels"

    .line 1556
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_11

    .line 1559
    invoke-static {p1}, Lcom/helpshift/util/HSJSONUtils;->convertJSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method private parseIsAnsweredFromMeta(Lorg/json/JSONObject;)Z
    .registers 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "is_answered"

    const/4 v1, 0x0

    .line 1820
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private parseIsMessageEmptyFromMeta(Lorg/json/JSONObject;)Z
    .registers 4

    const-string v0, "is_message_empty"

    const/4 v1, 0x0

    .line 1649
    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private parseIsResponseSkippedFromMeta(Lorg/json/JSONObject;)Z
    .registers 4

    const-string v0, "is_response_skipped"

    const/4 v1, 0x0

    .line 1738
    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private parseIsSuggestionsReadEventSent(Lorg/json/JSONObject;)Z
    .registers 4

    const-string v0, "is_suggestion_read_event_sent"

    const/4 v1, 0x0

    .line 1666
    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private parseReferredMessageIdFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "referredMessageId"

    const/4 v1, 0x0

    .line 1816
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseReferredMessageTypeFromMeta(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/MessageType;
    .registers 4

    const-string v0, "referred_message_type"

    const-string v1, ""

    .line 1730
    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->fromValue(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/MessageType;

    move-result-object p1

    return-object p1
.end method

.method private parseSelectedOptionDataFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    const-string v0, "selected_option_data"

    const-string v1, "{}"

    .line 1734
    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseSuggestionReadFAQPublishId(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    const-string v0, "suggestion_read_faq_publish_id"

    const-string v1, ""

    .line 1662
    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseTimeZoneIdFromMeta(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "timezone_id"

    .line 1773
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readActionCard(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/ActionCard;
    .registers 29

    move-object/from16 v1, p0

    const-string v2, "Error in read action card inside finally block"

    const-string v3, "Helpshift_ConverDB"

    const/4 v0, 0x1

    .line 1568
    new-array v4, v0, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1571
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action_cards"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_id"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1572
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "title"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1573
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "image_url"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1574
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "file_path"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1575
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is_image_secure"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v2

    .line 1576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v3

    const-string v3, "message_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v15

    const-string v15, "actions"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1579
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    const-string v0, "action_sha"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v20, v13

    .line 1580
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v11

    const-string v11, "action_title"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v22, v0

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v11

    const-string v11, "action_type"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v11

    .line 1582
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v25, v4

    const-string v4, "action_data"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1583
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "action_card_id"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1585
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS ac_id, "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AS a_id, "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " FROM "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " JOIN "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ON "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = ?  LIMIT 1"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 v2, p0

    .line 1600
    :try_start_195
    iget-object v3, v2, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v3}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_19b} :catch_274
    .catchall {:try_start_195 .. :try_end_19b} :catchall_26c

    .line 1601
    :try_start_19b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object/from16 v4, v25

    .line 1603
    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1604
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1a8} :catch_261
    .catchall {:try_start_19b .. :try_end_1a8} :catchall_25b

    if-eqz v4, :cond_248

    move-object/from16 v4, v24

    .line 1606
    :try_start_1ac
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/helpshift/conversation/activeconversation/model/ActionType;->fromValue(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/ActionType;

    move-result-object v4

    const-string v5, "action_data"

    .line 1608
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/helpshift/common/conversation/ConversationDB;->jsonify(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/helpshift/util/HSJSONUtils;->toStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    .line 1610
    new-instance v6, Lcom/helpshift/conversation/activeconversation/model/Action;

    move-object/from16 v7, v23

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v22

    .line 1611
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v4, v5}, Lcom/helpshift/conversation/activeconversation/model/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/model/ActionType;Ljava/util/Map;)V

    const-string v4, "a_id"

    .line 1614
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v6, Lcom/helpshift/conversation/activeconversation/model/Action;->actionLocalId:Ljava/lang/Long;

    .line 1616
    new-instance v4, Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    move-object/from16 v5, v21

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, v20

    .line 1617
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v19

    .line 1618
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_217

    goto :goto_218

    :cond_217
    const/4 v9, 0x0

    :goto_218
    invoke-direct {v4, v5, v7, v9, v6}, Lcom/helpshift/conversation/activeconversation/model/ActionCard;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/helpshift/conversation/activeconversation/model/Action;)V
    :try_end_21b
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_21b} :catch_261
    .catchall {:try_start_1ac .. :try_end_21b} :catchall_241

    :try_start_21b
    const-string v1, "ac_id"

    .line 1620
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->actionCardLocalId:Ljava/lang/Long;

    move-object/from16 v1, v18

    .line 1621
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->filePath:Ljava/lang/String;
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_237} :catch_239
    .catchall {:try_start_21b .. :try_end_237} :catchall_241

    move-object v1, v4

    goto :goto_248

    :catch_239
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    goto :goto_27a

    :catchall_241
    move-exception v0

    move-object v1, v0

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    goto :goto_28e

    .line 1624
    :cond_248
    :goto_248
    :try_start_248
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24b
    .catch Ljava/lang/Exception; {:try_start_248 .. :try_end_24b} :catch_261
    .catchall {:try_start_248 .. :try_end_24b} :catchall_25b

    if-eqz v3, :cond_28b

    .line 1632
    :try_start_24d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_250} :catch_251

    goto :goto_28b

    :catch_251
    move-exception v0

    move-object v3, v0

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    .line 1635
    invoke-static {v4, v5, v3}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28b

    :catchall_25b
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    goto :goto_272

    :catch_261
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    move-object/from16 v26, v3

    move-object v3, v1

    move-object/from16 v1, v26

    goto :goto_27a

    :catchall_26c
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    :goto_271
    move-object v3, v1

    :goto_272
    move-object v1, v0

    goto :goto_28e

    :catch_274
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    move-object v3, v1

    :goto_27a
    :try_start_27a
    const-string v6, "Error in read action card"

    .line 1627
    invoke-static {v4, v6, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27f
    .catchall {:try_start_27a .. :try_end_27f} :catchall_28c

    if-eqz v1, :cond_28a

    .line 1632
    :try_start_281
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_284
    .catch Ljava/lang/Exception; {:try_start_281 .. :try_end_284} :catch_285

    goto :goto_28a

    :catch_285
    move-exception v0

    move-object v1, v0

    .line 1635
    invoke-static {v4, v5, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28a
    :goto_28a
    move-object v1, v3

    :cond_28b
    :goto_28b
    return-object v1

    :catchall_28c
    move-exception v0

    goto :goto_271

    :goto_28e
    if-eqz v3, :cond_299

    .line 1632
    :try_start_290
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_293
    .catch Ljava/lang/Exception; {:try_start_290 .. :try_end_293} :catch_294

    goto :goto_299

    :catch_294
    move-exception v0

    move-object v3, v0

    .line 1635
    invoke-static {v4, v5, v3}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1638
    :cond_299
    :goto_299
    throw v1

    return-void
.end method

.method private declared-synchronized readConversation(Ljava/lang/String;[Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 13

    monitor-enter p0

    const/4 v0, 0x0

    .line 189
    :try_start_2
    iget-object v1, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v1}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "issues"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, p2

    .line 190
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_29
    .catchall {:try_start_2 .. :try_end_14} :catchall_26

    .line 197
    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 198
    invoke-direct {p0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->cursorToReadableConversation(Landroid/database/Cursor;)Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_24
    .catchall {:try_start_14 .. :try_end_1e} :catchall_37

    :cond_1e
    if-eqz p1, :cond_35

    .line 206
    :goto_20
    :try_start_20
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_3e

    goto :goto_35

    :catch_24
    move-exception p2

    goto :goto_2b

    :catchall_26
    move-exception p2

    move-object p1, v0

    goto :goto_38

    :catch_29
    move-exception p2

    move-object p1, v0

    :goto_2b
    :try_start_2b
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in read conversations with localId"

    .line 202
    invoke-static {v1, v2, p2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_37

    if-eqz p1, :cond_35

    goto :goto_20

    .line 209
    :cond_35
    :goto_35
    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception p2

    :goto_38
    if-eqz p1, :cond_3d

    .line 206
    :try_start_3a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_3d
    throw p2
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private readMessages(Ljava/lang/String;[Ljava/lang/String;)Lcom/helpshift/common/dao/DAOResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/helpshift/common/dao/DAOResult<",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;>;"
        }
    .end annotation

    .line 747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 750
    :try_start_6
    iget-object v2, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v2}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "messages"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    move-object v7, p2

    .line 751
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 759
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 761
    :cond_1e
    invoke-direct {p0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->cursorToMessageDM(Landroid/database/Cursor;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 765
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2b} :catch_3b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_39

    if-nez p1, :cond_1e

    :cond_2d
    if-eqz v1, :cond_32

    .line 776
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 779
    :cond_32
    new-instance p1, Lcom/helpshift/common/dao/DAOResult;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v0}, Lcom/helpshift/common/dao/DAOResult;-><init>(ZLjava/lang/Object;)V

    return-object p1

    :catchall_39
    move-exception p1

    goto :goto_4f

    :catch_3b
    move-exception p1

    :try_start_3c
    const-string p2, "Helpshift_ConverDB"

    const-string v2, "Error in read messages"

    .line 771
    invoke-static {p2, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 772
    new-instance p1, Lcom/helpshift/common/dao/DAOResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0}, Lcom/helpshift/common/dao/DAOResult;-><init>(ZLjava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_39

    if-eqz v1, :cond_4e

    .line 776
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4e
    return-object p1

    :goto_4f
    if-eqz v1, :cond_54

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 778
    :cond_54
    throw p1

    return-void
.end method

.method private readableConversationToContentValues(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Landroid/content/ContentValues;
    .registers 5

    .line 979
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 980
    iget-wide v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->userLocalId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "user_local_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 981
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    const-string v2, "server_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    const-string v2, "pre_conv_server_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->publishId:Ljava/lang/String;

    const-string v2, "publish_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localUUID:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageCursor:Ljava/lang/String;

    const-string v2, "message_cursor"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-boolean v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isStartNewConversationClicked:Z

    .line 989
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "start_new_conversation_action"

    .line 988
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 990
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    const-string v2, "created_at"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->updatedAt:Ljava/lang/String;

    const-string v2, "updated_at"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getEpochCreatedAtTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "epoch_time_created_at"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 994
    iget-wide v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->lastUserActivityTime:J

    .line 995
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_user_activity_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 996
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    const-string v2, "issue_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-boolean v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->wasFullPrivacyEnabledAtCreation:Z

    .line 998
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "full_privacy_enabled"

    .line 997
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 999
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    if-nez v1, :cond_85

    const/4 v1, -0x1

    goto :goto_8b

    :cond_85
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 1000
    invoke-virtual {v1}, Lcom/helpshift/conversation/dto/IssueState;->getValue()I

    move-result v1

    :goto_8b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "state"

    .line 999
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1001
    iget-boolean v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    .line 1002
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_redacted"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1003
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    const-string v2, "acid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->resolutionExpiryAt:Ljava/lang/Long;

    const-string v2, "resolution_expiry_at"

    .line 1005
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1006
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatExpiryAt:Ljava/lang/Long;

    const-string v2, "csat_expiry_at"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1008
    :try_start_b4
    invoke-direct {p0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->getConversationMeta(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "meta"

    .line 1009
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catch Lorg/json/JSONException; {:try_start_b4 .. :try_end_bd} :catch_be

    goto :goto_c6

    :catch_be
    move-exception p1

    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in generating meta string for conversation"

    .line 1012
    invoke-static {v1, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c6
    return-object v0
.end method

.method private readableMessageToContentValues(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Landroid/content/ContentValues;
    .registers 6

    .line 1133
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1134
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    const-string v2, "server_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    const-string v2, "conversation_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1136
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->body:Ljava/lang/String;

    const-string v2, "body"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    const-string v2, "created_at"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getEpochCreatedAtTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "epoch_time_created_at"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1140
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget v1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->deliveryState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "md_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1142
    iget-boolean v1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isRedacted:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_redacted"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1144
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->author:Lcom/helpshift/conversation/activeconversation/message/Author;

    .line 1145
    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/message/Author;->authorName:Ljava/lang/String;

    const-string v3, "author_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/message/Author;->authorId:Ljava/lang/String;

    const-string v3, "author_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/message/Author;->role:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    if-eqz v2, :cond_6c

    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/message/Author;->role:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_6d

    :cond_6c
    const/4 v2, 0x0

    :goto_6d
    const-string v3, "author_role"

    .line 1148
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/message/Author;->localAvatarImagePath:Ljava/lang/String;

    const-string v2, "local_avatar_image_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_79
    const-string v1, "meta"

    .line 1152
    invoke-direct {p0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->getMessageMeta(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_82} :catch_83

    goto :goto_8b

    :catch_83
    move-exception p1

    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in generating meta string for message"

    .line 1155
    invoke-static {v1, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8b
    return-object v0
.end method

.method private updateActionCard(Landroid/database/sqlite/SQLiteDatabase;Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;)V
    .registers 9

    const-string v0, "_id = ?"

    .line 855
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->actionCard:Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->actionCardLocalId:Ljava/lang/Long;

    if-nez v1, :cond_c

    .line 856
    invoke-direct {p0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->insertActionCard(Landroid/database/sqlite/SQLiteDatabase;Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;)V

    return-void

    .line 861
    :cond_c
    :try_start_c
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->actionCard:Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    iget-object v2, p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->serverId:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/helpshift/common/conversation/ConversationDB;->actionCardToContentValues(Lcom/helpshift/conversation/activeconversation/model/ActionCard;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x1

    .line 863
    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->actionCard:Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    iget-object v4, v4, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->actionCardLocalId:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "action_cards"

    .line 864
    invoke-virtual {p1, v4, v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 866
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->actionCard:Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->action:Lcom/helpshift/conversation/activeconversation/model/Action;

    iget-object v3, p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->actionCard:Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    iget-object v3, v3, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->actionCardLocalId:Ljava/lang/Long;

    .line 867
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v1, v3, v4}, Lcom/helpshift/common/conversation/ConversationDB;->actionToContentValues(Lcom/helpshift/conversation/activeconversation/model/Action;J)Landroid/content/ContentValues;

    move-result-object v1

    .line 869
    new-array v2, v2, [Ljava/lang/String;

    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->actionCard:Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->action:Lcom/helpshift/conversation/activeconversation/model/Action;

    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/model/Action;->actionLocalId:Ljava/lang/Long;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v5

    const-string p2, "actions"

    .line 870
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4a} :catch_4b

    goto :goto_53

    :catch_4b
    move-exception p1

    const-string p2, "Helpshift_ConverDB"

    const-string v0, "Error in update action card"

    .line 873
    invoke-static {p2, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_53
    return-void
.end method

.method private updateMessageInternal(Landroid/database/sqlite/SQLiteDatabase;Lcom/helpshift/conversation/activeconversation/message/MessageDM;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    .line 843
    invoke-direct {p0, p2}, Lcom/helpshift/common/conversation/ConversationDB;->readableMessageToContentValues(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "messages"

    .line 844
    invoke-virtual {p1, v1, v0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 848
    iget-object p3, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object p4, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_ACTION_CARD:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne p3, p4, :cond_14

    .line 849
    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    invoke-direct {p0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB;->updateActionCard(Landroid/database/sqlite/SQLiteDatabase;Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;)V

    :cond_14
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteConversationInboxData(J)V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "delete from conversation_inbox where user_local_id = ?"
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    .line 2302
    :try_start_3
    iget-object v1, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v1}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    .line 2303
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_17
    .catchall {:try_start_3 .. :try_end_16} :catchall_21

    goto :goto_1f

    :catch_17
    move-exception p1

    :try_start_18
    const-string p2, "Helpshift_ConverDB"

    const-string v0, "Error in delete conversationInboxData with UserLocalId"

    .line 2306
    invoke-static {p2, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_21

    .line 2308
    :goto_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteConversationWithLocalId(J)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "_id = ?"

    const/4 v1, 0x1

    .line 254
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "conversation_id = ?"
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_89

    const/4 v3, 0x0

    .line 259
    :try_start_10
    iget-object v4, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v4}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 260
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "issues"

    .line 261
    invoke-virtual {v3, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "messages"

    .line 262
    invoke-virtual {v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 263
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_26} :catch_46
    .catchall {:try_start_10 .. :try_end_26} :catchall_44

    if-eqz v3, :cond_69

    .line 271
    :try_start_28
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_89

    goto :goto_69

    :catch_2c
    move-exception v0

    :try_start_2d
    const-string v1, "Helpshift_ConverDB"

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in ending transaction deleteConversationWithLocalId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    :goto_40
    invoke-static {v1, p1, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_89

    goto :goto_69

    :catchall_44
    move-exception v0

    goto :goto_6b

    :catch_46
    move-exception v0

    :try_start_47
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in delete conversation with localId"

    .line 266
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_44

    if-eqz v3, :cond_69

    .line 271
    :try_start_50
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_54
    .catchall {:try_start_50 .. :try_end_53} :catchall_89

    goto :goto_69

    :catch_54
    move-exception v0

    :try_start_55
    const-string v1, "Helpshift_ConverDB"

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in ending transaction deleteConversationWithLocalId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_68
    .catchall {:try_start_55 .. :try_end_68} :catchall_89

    goto :goto_40

    .line 280
    :cond_69
    :goto_69
    monitor-exit p0

    return-void

    :goto_6b
    if-eqz v3, :cond_88

    .line 271
    :try_start_6d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_71
    .catchall {:try_start_6d .. :try_end_70} :catchall_89

    goto :goto_88

    :catch_71
    move-exception v1

    :try_start_72
    const-string v2, "Helpshift_ConverDB"

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in ending transaction deleteConversationWithLocalId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-static {v2, p1, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    :cond_88
    :goto_88
    throw v0
    :try_end_89
    .catchall {:try_start_72 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized deleteConversations(J)V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "issues"

    const-string v1, "messages"

    .line 2313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "user_local_id"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "conversation_id"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from  "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "issues"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  where "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = ?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from messages where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IN  ( "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "delete from issues where user_local_id = ?"
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_cf

    const/4 v2, 0x0

    .line 2330
    :try_start_90
    iget-object v3, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v3}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2331
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x1

    .line 2332
    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2333
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2334
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_b4} :catch_bc
    .catchall {:try_start_90 .. :try_end_b4} :catchall_ba

    if-eqz v2, :cond_c7

    .line 2341
    :goto_b6
    :try_start_b6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_cf

    goto :goto_c7

    :catchall_ba
    move-exception p1

    goto :goto_c9

    :catch_bc
    move-exception p1

    :try_start_bd
    const-string p2, "Helpshift_ConverDB"

    const-string v0, "Error in delete conversations with UserLocalId"

    .line 2337
    invoke-static {p2, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c4
    .catchall {:try_start_bd .. :try_end_c4} :catchall_ba

    if-eqz v2, :cond_c7

    goto :goto_b6

    .line 2344
    :cond_c7
    :goto_c7
    monitor-exit p0

    return-void

    :goto_c9
    if-eqz v2, :cond_ce

    .line 2341
    :try_start_cb
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2343
    :cond_ce
    throw p1
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized deleteMessagesForConversation(J)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v0, "conversation_id= ? "

    const/4 v1, 0x1

    .line 879
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_33

    .line 882
    :try_start_d
    iget-object v3, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v3}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v5, "messages"

    .line 883
    invoke-virtual {v3, v5, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_1a
    .catchall {:try_start_d .. :try_end_18} :catchall_33

    .line 884
    monitor-exit p0

    return v1

    :catch_1a
    move-exception v0

    :try_start_1b
    const-string v1, "Helpshift_ConverDB"

    .line 887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error deleting messages for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_33

    .line 888
    monitor-exit p0

    return v4

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dropAndCreateDatabase()V
    .registers 3

    monitor-enter p0

    .line 2209
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    iget-object v1, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v1}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/db/conversation/ConversationDBHelper;->dropAndCreateAllTables(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 2210
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAdminFAQSuggestion(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/support/Faq;
    .registers 13

    monitor-enter p0

    .line 2213
    :try_start_1
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_54

    invoke-static {p2}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_56

    if-eqz v0, :cond_f

    goto :goto_54

    .line 2220
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "faq_suggestions"

    const/4 v4, 0x0

    const-string v5, "publish_id = ? AND language = ?"

    const/4 v0, 0x2

    .line 2221
    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 p1, 0x1

    aput-object p2, v6, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_3e
    .catchall {:try_start_f .. :try_end_2a} :catchall_3c

    .line 2227
    :try_start_2a
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 2228
    invoke-direct {p0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->cursorToFaq(Landroid/database/Cursor;)Lcom/helpshift/support/Faq;

    move-result-object v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_3a
    .catchall {:try_start_2a .. :try_end_34} :catchall_4c

    :cond_34
    if-eqz p1, :cond_4a

    .line 2236
    :goto_36
    :try_start_36
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_56

    goto :goto_4a

    :catch_3a
    move-exception p2

    goto :goto_40

    :catchall_3c
    move-exception p2

    goto :goto_4e

    :catch_3e
    move-exception p2

    move-object p1, v1

    :goto_40
    :try_start_40
    const-string v0, "Helpshift_ConverDB"

    const-string v2, "Error in getAdminFAQSuggestion"

    .line 2232
    invoke-static {v0, v2, p2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4c

    if-eqz p1, :cond_4a

    goto :goto_36

    .line 2239
    :cond_4a
    :goto_4a
    monitor-exit p0

    return-object v1

    :catchall_4c
    move-exception p2

    move-object v1, p1

    :goto_4e
    if-eqz v1, :cond_53

    .line 2236
    :try_start_50
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2238
    :cond_53
    throw p2
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_56

    .line 2214
    :cond_54
    :goto_54
    monitor-exit p0

    return-object v1

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized getMessagesCountForConversations(Ljava/util/List;[Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 645
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 646
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    .line 648
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_18f

    goto :goto_a

    :cond_1f
    const/16 v1, 0x384

    const/4 v2, 0x0

    .line 654
    :try_start_22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v3}, Lcom/helpshift/util/DatabaseUtils;->createBatches(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 657
    iget-object v1, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v1}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_31} :catch_136
    .catchall {:try_start_22 .. :try_end_31} :catchall_133

    .line 658
    :try_start_31
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 659
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_38
    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_105

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 661
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Lcom/helpshift/util/DatabaseUtils;->makePlaceholders(I)Ljava/lang/String;

    move-result-object v4

    .line 662
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conversation_id IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 666
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 670
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 671
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_73

    :cond_87
    if-eqz p2, :cond_b3

    .line 675
    array-length v3, p2

    .line 676
    invoke-static {v3}, Lcom/helpshift/util/DatabaseUtils;->makePlaceholders(I)Ljava/lang/String;

    move-result-object v3

    .line 677
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, " AND "

    .line 680
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 687
    :cond_b3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    new-array v7, v3, [Ljava/lang/String;

    .line 688
    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v4, "messages"

    const-string v3, "COUNT(*) AS COUNT"

    const-string v6, "conversation_id"

    .line 690
    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v6

    .line 693
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "conversation_id"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v1

    move-object v5, v6

    move-object v6, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    .line 690
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 699
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_de
    const-string v3, "conversation_id"

    .line 702
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "COUNT"

    .line 703
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 704
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_de

    goto/16 :goto_38

    .line 708
    :cond_105
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_108} :catch_12f
    .catchall {:try_start_31 .. :try_end_108} :catchall_12d

    if-eqz v1, :cond_12a

    .line 715
    :try_start_10a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_12a

    .line 716
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_113} :catch_116
    .catchall {:try_start_10a .. :try_end_113} :catchall_114

    goto :goto_12a

    :catchall_114
    move-exception p1

    goto :goto_124

    :catch_116
    move-exception p1

    :try_start_117
    const-string p2, "Helpshift_ConverDB"

    const-string v1, "Error in get messages count inside finally block, "

    .line 720
    invoke-static {p2, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11e
    .catchall {:try_start_117 .. :try_end_11e} :catchall_114

    if-eqz v2, :cond_164

    .line 724
    :goto_120
    :try_start_120
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_164

    :goto_124
    if-eqz v2, :cond_129

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 726
    :cond_129
    throw p1
    :try_end_12a
    .catchall {:try_start_120 .. :try_end_12a} :catchall_18f

    :cond_12a
    :goto_12a
    if-eqz v2, :cond_164

    goto :goto_120

    :catchall_12d
    move-exception p1

    goto :goto_169

    :catch_12f
    move-exception p1

    move-object p2, v2

    move-object v2, v1

    goto :goto_138

    :catchall_133
    move-exception p1

    move-object v1, v2

    goto :goto_169

    :catch_136
    move-exception p1

    move-object p2, v2

    :goto_138
    :try_start_138
    const-string v1, "Helpshift_ConverDB"

    const-string v3, "Error in get messages count"

    .line 711
    invoke-static {v1, v3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13f
    .catchall {:try_start_138 .. :try_end_13f} :catchall_166

    if-eqz v2, :cond_161

    .line 715
    :try_start_141
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_161

    .line 716
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_14a} :catch_14d
    .catchall {:try_start_141 .. :try_end_14a} :catchall_14b

    goto :goto_161

    :catchall_14b
    move-exception p1

    goto :goto_15b

    :catch_14d
    move-exception p1

    :try_start_14e
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in get messages count inside finally block, "

    .line 720
    invoke-static {v1, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_155
    .catchall {:try_start_14e .. :try_end_155} :catchall_14b

    if-eqz p2, :cond_164

    .line 724
    :goto_157
    :try_start_157
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_164

    :goto_15b
    if-eqz p2, :cond_160

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 726
    :cond_160
    throw p1
    :try_end_161
    .catchall {:try_start_157 .. :try_end_161} :catchall_18f

    :cond_161
    :goto_161
    if-eqz p2, :cond_164

    goto :goto_157

    .line 728
    :cond_164
    :goto_164
    monitor-exit p0

    return-object v0

    :catchall_166
    move-exception p1

    move-object v1, v2

    move-object v2, p2

    :goto_169
    if-eqz v1, :cond_18b

    .line 715
    :try_start_16b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p2

    if-eqz p2, :cond_18b

    .line 716
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_174} :catch_177
    .catchall {:try_start_16b .. :try_end_174} :catchall_175

    goto :goto_18b

    :catchall_175
    move-exception p1

    goto :goto_185

    :catch_177
    move-exception p2

    :try_start_178
    const-string v0, "Helpshift_ConverDB"

    const-string v1, "Error in get messages count inside finally block, "

    .line 720
    invoke-static {v0, v1, p2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17f
    .catchall {:try_start_178 .. :try_end_17f} :catchall_175

    if-eqz v2, :cond_18e

    .line 724
    :goto_181
    :try_start_181
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_18e

    :goto_185
    if-eqz v2, :cond_18a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 726
    :cond_18a
    throw p1

    :cond_18b
    :goto_18b
    if-eqz v2, :cond_18e

    goto :goto_181

    .line 727
    :cond_18e
    :goto_18e
    throw p1
    :try_end_18f
    .catchall {:try_start_181 .. :try_end_18f} :catchall_18f

    :catchall_18f
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized getOldestConversationEpochCreatedAtTime(J)Ljava/lang/Long;
    .registers 13

    monitor-enter p0

    :try_start_1
    const-string v3, "user_local_id = ?"

    const/4 v0, 0x1

    .line 2393
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_59

    const/4 p1, 0x0

    .line 2395
    :try_start_e
    iget-object p2, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {p2}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "issues"

    const-string p2, "epoch_time_created_at"

    .line 2396
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "epoch_time_created_at ASC"

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_26} :catch_44
    .catchall {:try_start_e .. :try_end_26} :catchall_3f

    .line 2404
    :try_start_26
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "epoch_time_created_at"

    .line 2405
    const-class v1, Ljava/lang/Long;

    .line 2406
    invoke-static {p2, v0, v1}, Lcom/helpshift/util/DatabaseUtils;->parseColumnSafe(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_36} :catch_3d
    .catchall {:try_start_26 .. :try_end_36} :catchall_52

    move-object p1, v0

    :cond_37
    if-eqz p2, :cond_50

    .line 2414
    :goto_39
    :try_start_39
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_59

    goto :goto_50

    :catch_3d
    move-exception v0

    goto :goto_46

    :catchall_3f
    move-exception p2

    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    goto :goto_53

    :catch_44
    move-exception v0

    move-object p2, p1

    :goto_46
    :try_start_46
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in getting latest conversation created_at time"

    .line 2410
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_52

    if-eqz p2, :cond_50

    goto :goto_39

    .line 2417
    :cond_50
    :goto_50
    monitor-exit p0

    return-object p1

    :catchall_52
    move-exception p1

    :goto_53
    if-eqz p2, :cond_58

    .line 2414
    :try_start_55
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 2416
    :cond_58
    throw p1
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized getOldestMessageCursor(J)Ljava/lang/String;
    .registers 12

    monitor-enter p0

    :try_start_1
    const-string v0, "message_create_at"

    const-string v1, "issues.user_local_id"

    const-string v2, "issues._id"

    const-string v3, "messages.conversation_id"

    const-string v4, "messages.created_at"

    const-string v5, "messages.epoch_time_created_at"

    .line 2358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AS "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " FROM "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "issues"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " INNER JOIN "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "messages"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ON "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ? ORDER BY "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ASC LIMIT 1"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 2368
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_a4

    const/4 p1, 0x0

    .line 2370
    :try_start_6a
    iget-object p2, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {p2}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 2371
    invoke-virtual {p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_74} :catch_8f
    .catchall {:try_start_6a .. :try_end_74} :catchall_8a

    .line 2373
    :try_start_74
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 2374
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_82} :catch_88
    .catchall {:try_start_74 .. :try_end_82} :catchall_9d

    :cond_82
    if-eqz p2, :cond_9b

    .line 2382
    :goto_84
    :try_start_84
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_a4

    goto :goto_9b

    :catch_88
    move-exception v0

    goto :goto_91

    :catchall_8a
    move-exception p2

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_9e

    :catch_8f
    move-exception v0

    move-object p2, p1

    :goto_91
    :try_start_91
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in read messages"

    .line 2378
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_9d

    if-eqz p2, :cond_9b

    goto :goto_84

    .line 2386
    :cond_9b
    :goto_9b
    monitor-exit p0

    return-object p1

    :catchall_9d
    move-exception p1

    :goto_9e
    if-eqz p2, :cond_a3

    .line 2382
    :try_start_a0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 2384
    :cond_a3
    throw p1
    :try_end_a4
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_a4

    :catchall_a4
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized insertConversation(Lcom/helpshift/conversation/activeconversation/model/Conversation;)J
    .registers 7

    monitor-enter p0

    .line 295
    :try_start_1
    invoke-direct {p0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->readableConversationToContentValues(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Landroid/content/ContentValues;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1f

    const-wide/16 v0, -0x1

    .line 298
    :try_start_7
    iget-object v2, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v2}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "issues"

    const/4 v4, 0x0

    .line 299
    invoke-virtual {v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15
    .catchall {:try_start_7 .. :try_end_14} :catchall_1f

    goto :goto_1d

    :catch_15
    move-exception p1

    :try_start_16
    const-string v2, "Helpshift_ConverDB"

    const-string v3, "Error in insert conversation"

    .line 302
    invoke-static {v2, v3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1f

    .line 304
    :goto_1d
    monitor-exit p0

    return-wide v0

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertConversations(Ljava/util/List;)Lcom/helpshift/common/dao/DAOResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)",
            "Lcom/helpshift/common/dao/DAOResult<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 308
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 309
    new-instance p1, Lcom/helpshift/common/dao/DAOResult;

    invoke-direct {p1, v1, v2}, Lcom/helpshift/common/dao/DAOResult;-><init>(ZLjava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_a6

    monitor-exit p0

    return-object p1

    .line 312
    :cond_10
    :try_start_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 314
    invoke-direct {p0, v3}, Lcom/helpshift/common/conversation/ConversationDB;->readableConversationToContentValues(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Landroid/content/ContentValues;

    move-result-object v3

    .line 315
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 318
    :cond_2d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_a6

    .line 320
    :try_start_32
    iget-object v3, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v3}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_38} :catch_79
    .catchall {:try_start_32 .. :try_end_38} :catchall_76

    .line 321
    :try_start_38
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 322
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "issues"

    .line 323
    invoke-virtual {v3, v5, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 324
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 326
    :cond_59
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5c} :catch_73
    .catchall {:try_start_38 .. :try_end_5c} :catchall_71

    if-eqz v3, :cond_6a

    .line 335
    :try_start_5e
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_62
    .catchall {:try_start_5e .. :try_end_61} :catchall_a6

    goto :goto_6a

    :catch_62
    move-exception v0

    :try_start_63
    const-string v2, "Helpshift_ConverDB"

    const-string v3, "Error in insert conversations inside finally block"

    .line 338
    invoke-static {v2, v3, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    :cond_6a
    :goto_6a
    new-instance v0, Lcom/helpshift/common/dao/DAOResult;

    invoke-direct {v0, v1, p1}, Lcom/helpshift/common/dao/DAOResult;-><init>(ZLjava/lang/Object;)V
    :try_end_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_a6

    monitor-exit p0

    return-object v0

    :catchall_71
    move-exception p1

    goto :goto_97

    :catch_73
    move-exception v0

    move-object v2, v3

    goto :goto_7a

    :catchall_76
    move-exception p1

    move-object v3, v2

    goto :goto_97

    :catch_79
    move-exception v0

    :goto_7a
    :try_start_7a
    const-string v1, "Helpshift_ConverDB"

    const-string v3, "Error in insert conversations"

    .line 329
    invoke-static {v1, v3, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    new-instance v0, Lcom/helpshift/common/dao/DAOResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/helpshift/common/dao/DAOResult;-><init>(ZLjava/lang/Object;)V
    :try_end_87
    .catchall {:try_start_7a .. :try_end_87} :catchall_76

    if-eqz v2, :cond_95

    .line 335
    :try_start_89
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8d
    .catchall {:try_start_89 .. :try_end_8c} :catchall_a6

    goto :goto_95

    :catch_8d
    move-exception p1

    :try_start_8e
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in insert conversations inside finally block"

    .line 338
    invoke-static {v1, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_a6

    .line 330
    :cond_95
    :goto_95
    monitor-exit p0

    return-object v0

    :goto_97
    if-eqz v3, :cond_a5

    .line 335
    :try_start_99
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9d
    .catchall {:try_start_99 .. :try_end_9c} :catchall_a6

    goto :goto_a5

    :catch_9d
    move-exception v0

    :try_start_9e
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in insert conversations inside finally block"

    .line 338
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    :cond_a5
    :goto_a5
    throw p1
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_a6

    :catchall_a6
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized insertMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)J
    .registers 7

    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 471
    :try_start_3
    invoke-direct {p0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->readableMessageToContentValues(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Landroid/content/ContentValues;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_4e

    const/4 v3, 0x0

    .line 474
    :try_start_8
    iget-object v4, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v4}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 475
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 476
    invoke-direct {p0, v3, p1, v2}, Lcom/helpshift/common/conversation/ConversationDB;->insertMessageInternal(Landroid/database/sqlite/SQLiteDatabase;Lcom/helpshift/conversation/activeconversation/message/MessageDM;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 477
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_29
    .catchall {:try_start_8 .. :try_end_18} :catchall_27

    if-eqz v3, :cond_3d

    .line 485
    :try_start_1a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_4e

    goto :goto_3d

    :catch_1e
    move-exception p1

    :try_start_1f
    const-string v2, "Helpshift_ConverDB"

    const-string v3, "Error in insert message inside finally block"

    .line 488
    :goto_23
    invoke-static {v2, v3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_4e

    goto :goto_3d

    :catchall_27
    move-exception p1

    goto :goto_3f

    :catch_29
    move-exception p1

    :try_start_2a
    const-string v2, "Helpshift_ConverDB"

    const-string v4, "Error in insert message"

    .line 480
    invoke-static {v2, v4, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    if-eqz v3, :cond_3d

    .line 485
    :try_start_33
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37
    .catchall {:try_start_33 .. :try_end_36} :catchall_4e

    goto :goto_3d

    :catch_37
    move-exception p1

    :try_start_38
    const-string v2, "Helpshift_ConverDB"

    const-string v3, "Error in insert message inside finally block"
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_4e

    goto :goto_23

    .line 492
    :cond_3d
    :goto_3d
    monitor-exit p0

    return-wide v0

    :goto_3f
    if-eqz v3, :cond_4d

    .line 485
    :try_start_41
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45
    .catchall {:try_start_41 .. :try_end_44} :catchall_4e

    goto :goto_4d

    :catch_45
    move-exception v0

    :try_start_46
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in insert message inside finally block"

    .line 488
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 491
    :cond_4d
    :goto_4d
    throw p1
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized insertMessages(Ljava/util/List;)Lcom/helpshift/common/dao/DAOResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)",
            "Lcom/helpshift/common/dao/DAOResult<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 496
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 497
    new-instance p1, Lcom/helpshift/common/dao/DAOResult;

    invoke-direct {p1, v2, v1}, Lcom/helpshift/common/dao/DAOResult;-><init>(ZLjava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_a3

    monitor-exit p0

    return-object p1

    .line 500
    :cond_10
    :try_start_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 502
    invoke-direct {p0, v4}, Lcom/helpshift/common/conversation/ConversationDB;->readableMessageToContentValues(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Landroid/content/ContentValues;

    move-result-object v4

    .line 503
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 506
    :cond_2d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_a3

    const/4 v4, 0x0

    .line 508
    :try_start_33
    iget-object v5, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v5}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 510
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_41
    if-ge v6, v5, :cond_5d

    .line 512
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    invoke-direct {p0, v1, v7, v8}, Lcom/helpshift/common/conversation/ConversationDB;->insertMessageInternal(Landroid/database/sqlite/SQLiteDatabase;Lcom/helpshift/conversation/activeconversation/message/MessageDM;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 513
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    .line 515
    :cond_5d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_60} :catch_77
    .catchall {:try_start_33 .. :try_end_60} :catchall_75

    if-eqz v1, :cond_6e

    .line 524
    :try_start_62
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66
    .catchall {:try_start_62 .. :try_end_65} :catchall_a3

    goto :goto_6e

    :catch_66
    move-exception p1

    :try_start_67
    const-string v0, "Helpshift_ConverDB"

    const-string v1, "Error in insert messages inside finally block"

    .line 527
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 531
    :cond_6e
    :goto_6e
    new-instance p1, Lcom/helpshift/common/dao/DAOResult;

    invoke-direct {p1, v2, v3}, Lcom/helpshift/common/dao/DAOResult;-><init>(ZLjava/lang/Object;)V
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_a3

    monitor-exit p0

    return-object p1

    :catchall_75
    move-exception p1

    goto :goto_94

    :catch_77
    move-exception p1

    :try_start_78
    const-string v0, "Helpshift_ConverDB"

    const-string v2, "Error in insert messages"

    .line 518
    invoke-static {v0, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 519
    new-instance p1, Lcom/helpshift/common/dao/DAOResult;

    invoke-direct {p1, v4, v3}, Lcom/helpshift/common/dao/DAOResult;-><init>(ZLjava/lang/Object;)V
    :try_end_84
    .catchall {:try_start_78 .. :try_end_84} :catchall_75

    if-eqz v1, :cond_92

    .line 524
    :try_start_86
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a
    .catchall {:try_start_86 .. :try_end_89} :catchall_a3

    goto :goto_92

    :catch_8a
    move-exception v0

    :try_start_8b
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in insert messages inside finally block"

    .line 527
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_a3

    .line 519
    :cond_92
    :goto_92
    monitor-exit p0

    return-object p1

    :goto_94
    if-eqz v1, :cond_a2

    .line 524
    :try_start_96
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_9a
    .catchall {:try_start_96 .. :try_end_99} :catchall_a3

    goto :goto_a2

    :catch_9a
    move-exception v0

    :try_start_9b
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in insert messages inside finally block"

    .line 527
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 530
    :cond_a2
    :goto_a2
    throw p1
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized insertOrUpdateAdminFAQSuggestion(Lcom/helpshift/support/Faq;)V
    .registers 7

    monitor-enter p0

    .line 2243
    :try_start_1
    invoke-static {p1}, Lcom/helpshift/common/conversation/ConversationDB;->faqToContentValues(Lcom/helpshift/support/Faq;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "publish_id = ? AND language = ?"

    const/4 v2, 0x2

    .line 2247
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/helpshift/support/Faq;->publish_id:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object p1, p1, Lcom/helpshift/support/Faq;->language:Ljava/lang/String;

    aput-object p1, v2, v3
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_39

    .line 2249
    :try_start_14
    iget-object p1, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {p1}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v3, "faq_suggestions"

    .line 2250
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/helpshift/common/conversation/ConversationDB;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v1, "faq_suggestions"

    const/4 v2, 0x0

    .line 2252
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_37

    :cond_29
    const-string v3, "faq_suggestions"

    .line 2255
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2e} :catch_2f
    .catchall {:try_start_14 .. :try_end_2e} :catchall_39

    goto :goto_37

    :catch_2f
    move-exception p1

    :try_start_30
    const-string v0, "Helpshift_ConverDB"

    const-string v1, "Error in insertOrUpdateAdminFAQSuggestion"

    .line 2259
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_39

    .line 2261
    :goto_37
    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readConversationInboxRecord(J)Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;
    .registers 12

    monitor-enter p0

    :try_start_1
    const-string v3, "user_local_id = ?"

    const/4 v0, 0x1

    .line 444
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4a

    const/4 p1, 0x0

    .line 446
    :try_start_e
    iget-object p2, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {p2}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "conversation_inbox"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 447
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_35
    .catchall {:try_start_e .. :try_end_1e} :catchall_30

    .line 454
    :try_start_1e
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 455
    invoke-direct {p0, p2}, Lcom/helpshift/common/conversation/ConversationDB;->cursorToConversationInboxRecord(Landroid/database/Cursor;)Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;

    move-result-object p1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_2e
    .catchall {:try_start_1e .. :try_end_28} :catchall_43

    :cond_28
    if-eqz p2, :cond_41

    .line 463
    :goto_2a
    :try_start_2a
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_4a

    goto :goto_41

    :catch_2e
    move-exception v0

    goto :goto_37

    :catchall_30
    move-exception p2

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_44

    :catch_35
    move-exception v0

    move-object p2, p1

    :goto_37
    :try_start_37
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in read conversation inbox record"

    .line 459
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_43

    if-eqz p2, :cond_41

    goto :goto_2a

    .line 466
    :cond_41
    :goto_41
    monitor-exit p0

    return-object p1

    :catchall_43
    move-exception p1

    :goto_44
    if-eqz p2, :cond_49

    .line 463
    :try_start_46
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_49
    throw p1
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized readConversationWithLocalId(Ljava/lang/Long;)Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "_id = ?"

    const/4 v1, 0x1

    .line 248
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 249
    invoke-direct {p0, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->readConversation(Ljava/lang/String;[Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readConversationWithServerId(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "server_id = ?"

    const/4 v1, 0x1

    .line 284
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 285
    invoke-direct {p0, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->readConversation(Ljava/lang/String;[Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readConversationsWithLocalId(J)Lcom/helpshift/common/dao/DAOResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/helpshift/common/dao/DAOResult<",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 213
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v5, "user_local_id = ?"

    const/4 v10, 0x1

    .line 216
    new-array v6, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v6, p2
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_5e

    .line 218
    :try_start_13
    iget-object p1, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {p1}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "issues"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 219
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 227
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 229
    :cond_29
    invoke-direct {p0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->cursorToReadableConversation(Landroid/database/Cursor;)Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object p1

    .line 230
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_34} :catch_44
    .catchall {:try_start_13 .. :try_end_34} :catchall_42

    if-nez p1, :cond_29

    :cond_36
    if-eqz v1, :cond_3b

    .line 240
    :try_start_38
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_3b
    new-instance p1, Lcom/helpshift/common/dao/DAOResult;

    invoke-direct {p1, v10, v0}, Lcom/helpshift/common/dao/DAOResult;-><init>(ZLjava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_5e

    monitor-exit p0

    return-object p1

    :catchall_42
    move-exception p1

    goto :goto_58

    :catch_44
    move-exception p1

    :try_start_45
    const-string v2, "Helpshift_ConverDB"

    const-string v3, "Error in read conversations with localId"

    .line 235
    invoke-static {v2, v3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    new-instance p1, Lcom/helpshift/common/dao/DAOResult;

    invoke-direct {p1, p2, v0}, Lcom/helpshift/common/dao/DAOResult;-><init>(ZLjava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_42

    if-eqz v1, :cond_56

    .line 240
    :try_start_53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5e

    .line 236
    :cond_56
    monitor-exit p0

    return-object p1

    :goto_58
    if-eqz v1, :cond_5d

    .line 240
    :try_start_5a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_5d
    throw p1
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized readMessageWithLocalId(Ljava/lang/Long;)Lcom/helpshift/common/dao/DAOResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/helpshift/common/dao/DAOResult<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "_id = ?"

    const/4 v1, 0x1

    .line 2198
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 2199
    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->readMessages(Ljava/lang/String;[Ljava/lang/String;)Lcom/helpshift/common/dao/DAOResult;

    move-result-object p1

    .line 2200
    invoke-virtual {p1}, Lcom/helpshift/common/dao/DAOResult;->isSuccess()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    .line 2201
    new-instance p1, Lcom/helpshift/common/dao/DAOResult;

    invoke-direct {p1, v3, v2}, Lcom/helpshift/common/dao/DAOResult;-><init>(ZLjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_3a

    monitor-exit p0

    return-object p1

    .line 2203
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2204
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_33

    :cond_2c
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 2205
    :goto_33
    new-instance p1, Lcom/helpshift/common/dao/DAOResult;

    invoke-direct {p1, v1, v2}, Lcom/helpshift/common/dao/DAOResult;-><init>(ZLjava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_3a

    monitor-exit p0

    return-object p1

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readMessageWithServerId(Ljava/lang/String;)Lcom/helpshift/common/dao/DAOResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/helpshift/common/dao/DAOResult<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "server_id = ?"

    const/4 v1, 0x1

    .line 2186
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 2187
    invoke-direct {p0, v0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->readMessages(Ljava/lang/String;[Ljava/lang/String;)Lcom/helpshift/common/dao/DAOResult;

    move-result-object p1

    .line 2188
    invoke-virtual {p1}, Lcom/helpshift/common/dao/DAOResult;->isSuccess()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    .line 2189
    new-instance p1, Lcom/helpshift/common/dao/DAOResult;

    invoke-direct {p1, v3, v2}, Lcom/helpshift/common/dao/DAOResult;-><init>(ZLjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_3a

    monitor-exit p0

    return-object p1

    .line 2191
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2192
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_33

    :cond_2c
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 2193
    :goto_33
    new-instance p1, Lcom/helpshift/common/dao/DAOResult;

    invoke-direct {p1, v1, v2}, Lcom/helpshift/common/dao/DAOResult;-><init>(ZLjava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_3a

    monitor-exit p0

    return-object p1

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readMessages(J)Lcom/helpshift/common/dao/DAOResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/helpshift/common/dao/DAOResult<",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "conversation_id = ?"

    const/4 v1, 0x1

    .line 733
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 734
    invoke-direct {p0, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->readMessages(Ljava/lang/String;[Ljava/lang/String;)Lcom/helpshift/common/dao/DAOResult;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readMessages(JLcom/helpshift/conversation/activeconversation/message/MessageType;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/helpshift/conversation/activeconversation/message/MessageType;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "conversation_id = ? AND type = ?"

    const/4 v1, 0x2

    .line 742
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p3}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->getValue()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    .line 743
    invoke-direct {p0, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->readMessages(Ljava/lang/String;[Ljava/lang/String;)Lcom/helpshift/common/dao/DAOResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readMessagesForConversations(Ljava/util/Collection;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 579
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_110

    const/16 v1, 0x384

    const/4 v2, 0x0

    .line 584
    :try_start_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v3}, Lcom/helpshift/util/DatabaseUtils;->createBatches(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 587
    iget-object v1, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v1}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_b6
    .catchall {:try_start_9 .. :try_end_18} :catchall_b3

    .line 588
    :try_start_18
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 590
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 591
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Lcom/helpshift/util/DatabaseUtils;->makePlaceholders(I)Ljava/lang/String;

    move-result-object v4

    .line 592
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "conversation_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 593
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 594
    :goto_50
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_63

    .line 595
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    :cond_63
    const-string v4, "messages"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    .line 598
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 606
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 608
    :cond_74
    invoke-direct {p0, v2}, Lcom/helpshift/common/conversation/ConversationDB;->cursorToMessageDM(Landroid/database/Cursor;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object v3

    if-eqz v3, :cond_7d

    .line 614
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_7d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_74

    goto :goto_1f

    .line 619
    :cond_84
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_87} :catch_ae
    .catchall {:try_start_18 .. :try_end_87} :catchall_ac

    if-eqz v1, :cond_a9

    .line 626
    :try_start_89
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 627
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_92} :catch_95
    .catchall {:try_start_89 .. :try_end_92} :catchall_93

    goto :goto_a9

    :catchall_93
    move-exception p1

    goto :goto_a3

    :catch_95
    move-exception p1

    :try_start_96
    const-string v1, "Helpshift_ConverDB"

    const-string v3, "Error in read messages inside finally block, "

    .line 631
    invoke-static {v1, v3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_93

    if-eqz v2, :cond_e4

    .line 635
    :goto_9f
    :try_start_9f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_e4

    :goto_a3
    if-eqz v2, :cond_a8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_a8
    throw p1
    :try_end_a9
    .catchall {:try_start_9f .. :try_end_a9} :catchall_110

    :cond_a9
    :goto_a9
    if-eqz v2, :cond_e4

    goto :goto_9f

    :catchall_ac
    move-exception p1

    goto :goto_ea

    :catch_ae
    move-exception p1

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_b8

    :catchall_b3
    move-exception p1

    move-object v1, v2

    goto :goto_ea

    :catch_b6
    move-exception p1

    move-object v1, v2

    :goto_b8
    :try_start_b8
    const-string v3, "Helpshift_ConverDB"

    const-string v4, "Error in read messages"

    .line 622
    invoke-static {v3, v4, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_e6

    if-eqz v2, :cond_e1

    .line 626
    :try_start_c1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_e1

    .line 627
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_ca} :catch_cd
    .catchall {:try_start_c1 .. :try_end_ca} :catchall_cb

    goto :goto_e1

    :catchall_cb
    move-exception p1

    goto :goto_db

    :catch_cd
    move-exception p1

    :try_start_ce
    const-string v2, "Helpshift_ConverDB"

    const-string v3, "Error in read messages inside finally block, "

    .line 631
    invoke-static {v2, v3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d5
    .catchall {:try_start_ce .. :try_end_d5} :catchall_cb

    if-eqz v1, :cond_e4

    .line 635
    :goto_d7
    :try_start_d7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_e4

    :goto_db
    if-eqz v1, :cond_e0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_e0
    throw p1
    :try_end_e1
    .catchall {:try_start_d7 .. :try_end_e1} :catchall_110

    :cond_e1
    :goto_e1
    if-eqz v1, :cond_e4

    goto :goto_d7

    .line 639
    :cond_e4
    :goto_e4
    monitor-exit p0

    return-object v0

    :catchall_e6
    move-exception p1

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_ea
    if-eqz v1, :cond_10c

    .line 626
    :try_start_ec
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 627
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f5} :catch_f8
    .catchall {:try_start_ec .. :try_end_f5} :catchall_f6

    goto :goto_10c

    :catchall_f6
    move-exception p1

    goto :goto_106

    :catch_f8
    move-exception v0

    :try_start_f9
    const-string v1, "Helpshift_ConverDB"

    const-string v3, "Error in read messages inside finally block, "

    .line 631
    invoke-static {v1, v3, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_100
    .catchall {:try_start_f9 .. :try_end_100} :catchall_f6

    if-eqz v2, :cond_10f

    .line 635
    :goto_102
    :try_start_102
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_10f

    :goto_106
    if-eqz v2, :cond_10b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_10b
    throw p1

    :cond_10c
    :goto_10c
    if-eqz v2, :cond_10f

    goto :goto_102

    .line 638
    :cond_10f
    :goto_10f
    throw p1
    :try_end_110
    .catchall {:try_start_102 .. :try_end_110} :catchall_110

    :catchall_110
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized readPreConversationWithServerId(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "pre_conv_server_id = ?"

    const/4 v1, 0x1

    .line 290
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 291
    invoke-direct {p0, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->readConversation(Ljava/lang/String;[Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAdminFAQSuggestion(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 2282
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2e

    if-nez v0, :cond_2c

    :try_start_d
    const-string v0, "publish_id = ? AND language = ?"

    const/4 v1, 0x2

    .line 2287
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 2288
    iget-object p1, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {p1}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "faq_suggestions"

    .line 2289
    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_23} :catch_24
    .catchall {:try_start_d .. :try_end_23} :catchall_2e

    goto :goto_2c

    :catch_24
    move-exception p1

    :try_start_25
    const-string p2, "Helpshift_ConverDB"

    const-string v0, "Error in removeAdminFAQSuggestion"

    .line 2292
    invoke-static {p2, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2e

    .line 2295
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized storeConversationInboxRecord(Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;)Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "user_local_id = ?"

    const/4 v1, 0x1

    .line 418
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;->userLocalId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 419
    invoke-direct {p0, p1}, Lcom/helpshift/common/conversation/ConversationDB;->conversationInboxRecordToContentValues(Lcom/helpshift/conversation/dto/dao/ConversationInboxRecord;)Landroid/content/ContentValues;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_38

    .line 421
    :try_start_13
    iget-object v3, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v3}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "conversation_inbox"

    .line 423
    invoke-direct {p0, v3, v4, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, "conversation_inbox"

    .line 425
    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_36

    :cond_27
    const-string v0, "conversation_inbox"

    const/4 v1, 0x0

    .line 431
    invoke-virtual {v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2d} :catch_2e
    .catchall {:try_start_13 .. :try_end_2d} :catchall_38

    goto :goto_36

    :catch_2e
    move-exception v0

    :try_start_2f
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in store conversation inbox record"

    .line 435
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_38

    .line 437
    :goto_36
    monitor-exit p0

    return-object p1

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateConversation(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 3

    monitor-enter p0

    .line 346
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {p0, v0}, Lcom/helpshift/common/conversation/ConversationDB;->updateConversations(Ljava/util/List;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 349
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateConversations(Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 371
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9d

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 372
    monitor-exit p0

    return v1

    .line 374
    :cond_a
    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 376
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 377
    invoke-direct {p0, v4}, Lcom/helpshift/common/conversation/ConversationDB;->readableConversationToContentValues(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Landroid/content/ContentValues;

    move-result-object v6

    .line 378
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    new-array v6, v1, [Ljava/lang/String;

    iget-object v4, v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v5

    .line 380
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_3a
    const/4 v3, 0x0

    const-string v4, "_id = ?"
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_9d

    .line 385
    :try_start_3d
    iget-object v6, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v6}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 386
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v6, 0x0

    .line 387
    :goto_47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_61

    const-string v7, "issues"

    .line 389
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 391
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 388
    invoke-virtual {v3, v7, v8, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 393
    :cond_61
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_64} :catch_76
    .catchall {:try_start_3d .. :try_end_64} :catchall_74

    if-eqz v3, :cond_72

    .line 402
    :try_start_66
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a
    .catchall {:try_start_66 .. :try_end_69} :catchall_9d

    goto :goto_72

    :catch_6a
    move-exception p1

    :try_start_6b
    const-string v0, "Helpshift_ConverDB"

    const-string v2, "Error in update conversations inside finally block"

    .line 405
    invoke-static {v0, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_9d

    .line 409
    :cond_72
    :goto_72
    monitor-exit p0

    return v1

    :catchall_74
    move-exception p1

    goto :goto_8e

    :catch_76
    move-exception p1

    :try_start_77
    const-string v0, "Helpshift_ConverDB"

    const-string v1, "Error in update conversations"

    .line 396
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_74

    if-eqz v3, :cond_8c

    .line 402
    :try_start_80
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_84
    .catchall {:try_start_80 .. :try_end_83} :catchall_9d

    goto :goto_8c

    :catch_84
    move-exception p1

    :try_start_85
    const-string v0, "Helpshift_ConverDB"

    const-string v1, "Error in update conversations inside finally block"

    .line 405
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_9d

    .line 397
    :cond_8c
    :goto_8c
    monitor-exit p0

    return v5

    :goto_8e
    if-eqz v3, :cond_9c

    .line 402
    :try_start_90
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_94
    .catchall {:try_start_90 .. :try_end_93} :catchall_9d

    goto :goto_9c

    :catch_94
    move-exception v0

    :try_start_95
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in update conversations inside finally block"

    .line 405
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    :cond_9c
    :goto_9c
    throw p1
    :try_end_9d
    .catchall {:try_start_95 .. :try_end_9d} :catchall_9d

    :catchall_9d
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized updateLastUserActivityTimeInConversation(Ljava/lang/Long;J)V
    .registers 6

    monitor-enter p0

    .line 353
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "last_user_activity_time"

    .line 354
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "_id = ?"

    const/4 p3, 0x1

    .line 357
    new-array p3, p3, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_31

    .line 359
    :try_start_1b
    iget-object p1, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {p1}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "issues"

    .line 360
    invoke-virtual {p1, v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_27
    .catchall {:try_start_1b .. :try_end_26} :catchall_31

    goto :goto_2f

    :catch_27
    move-exception p1

    :try_start_28
    const-string p2, "Helpshift_ConverDB"

    const-string p3, "Error in updateLastUserActivityTimeInConversation"

    .line 366
    invoke-static {p2, p3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_31

    .line 368
    :goto_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "_id = ?"

    const/4 v1, 0x1

    .line 784
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_55

    const/4 v2, 0x0

    .line 787
    :try_start_10
    iget-object v3, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v3}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 788
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 789
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/helpshift/common/conversation/ConversationDB;->updateMessageInternal(Landroid/database/sqlite/SQLiteDatabase;Lcom/helpshift/conversation/activeconversation/message/MessageDM;Ljava/lang/String;[Ljava/lang/String;)V

    .line 790
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_30
    .catchall {:try_start_10 .. :try_end_1f} :catchall_2e

    if-eqz v2, :cond_44

    .line 798
    :try_start_21
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25
    .catchall {:try_start_21 .. :try_end_24} :catchall_55

    goto :goto_44

    :catch_25
    move-exception p1

    :try_start_26
    const-string v0, "Helpshift_ConverDB"

    const-string v1, "Error in update message inside finally block"

    .line 801
    :goto_2a
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_55

    goto :goto_44

    :catchall_2e
    move-exception p1

    goto :goto_46

    :catch_30
    move-exception p1

    :try_start_31
    const-string v0, "Helpshift_ConverDB"

    const-string v1, "Error in update message"

    .line 793
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    if-eqz v2, :cond_44

    .line 798
    :try_start_3a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_55

    goto :goto_44

    :catch_3e
    move-exception p1

    :try_start_3f
    const-string v0, "Helpshift_ConverDB"

    const-string v1, "Error in update message inside finally block"
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_55

    goto :goto_2a

    .line 806
    :cond_44
    :goto_44
    monitor-exit p0

    return-void

    :goto_46
    if-eqz v2, :cond_54

    .line 798
    :try_start_48
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_55

    goto :goto_54

    :catch_4c
    move-exception v0

    :try_start_4d
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in update message inside finally block"

    .line 801
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 804
    :cond_54
    :goto_54
    throw p1
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized updateMessages(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 809
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_71

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 810
    monitor-exit p0

    return v1

    :cond_a
    const/4 v0, 0x0

    :try_start_b
    const-string v2, "_id = ?"
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_71

    const/4 v3, 0x0

    .line 816
    :try_start_e
    iget-object v4, p0, Lcom/helpshift/common/conversation/ConversationDB;->dbHelper:Lcom/helpshift/db/conversation/ConversationDBHelper;

    invoke-virtual {v4}, Lcom/helpshift/db/conversation/ConversationDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 818
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 819
    new-array v5, v1, [Ljava/lang/String;

    iget-object v6, v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 820
    invoke-direct {p0, v0, v4, v2, v5}, Lcom/helpshift/common/conversation/ConversationDB;->updateMessageInternal(Landroid/database/sqlite/SQLiteDatabase;Lcom/helpshift/conversation/activeconversation/message/MessageDM;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1b

    .line 822
    :cond_35
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_38} :catch_4a
    .catchall {:try_start_e .. :try_end_38} :catchall_48

    if-eqz v0, :cond_46

    .line 831
    :try_start_3a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_71

    goto :goto_46

    :catch_3e
    move-exception p1

    :try_start_3f
    const-string v0, "Helpshift_ConverDB"

    const-string v2, "Error in update messages"

    .line 834
    invoke-static {v0, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_71

    .line 838
    :cond_46
    :goto_46
    monitor-exit p0

    return v1

    :catchall_48
    move-exception p1

    goto :goto_62

    :catch_4a
    move-exception p1

    :try_start_4b
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in update messages"

    .line 825
    invoke-static {v1, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_48

    if-eqz v0, :cond_60

    .line 831
    :try_start_54
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58
    .catchall {:try_start_54 .. :try_end_57} :catchall_71

    goto :goto_60

    :catch_58
    move-exception p1

    :try_start_59
    const-string v0, "Helpshift_ConverDB"

    const-string v1, "Error in update messages"

    .line 834
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_71

    .line 826
    :cond_60
    :goto_60
    monitor-exit p0

    return v3

    :goto_62
    if-eqz v0, :cond_70

    .line 831
    :try_start_64
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_68
    .catchall {:try_start_64 .. :try_end_67} :catchall_71

    goto :goto_70

    :catch_68
    move-exception v0

    :try_start_69
    const-string v1, "Helpshift_ConverDB"

    const-string v2, "Error in update messages"

    .line 834
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 837
    :cond_70
    :goto_70
    throw p1
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_71

    :catchall_71
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method
