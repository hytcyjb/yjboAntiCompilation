.class public Lcom/didi/common/database/OrderListHelper;
.super Ljava/lang/Object;
.source "OrderListHelper.java"


# static fields
.field private static SDK:Ljava/lang/Integer;

.field private static mInstance:Lcom/didi/common/database/OrderListHelper;


# instance fields
.field private mContactsUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/database/OrderListHelper;->mInstance:Lcom/didi/common/database/OrderListHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "content://com.diditaxi.psnger/contact_invite"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/database/OrderListHelper;->mContactsUri:Landroid/net/Uri;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/didi/common/database/OrderListHelper;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/didi/common/database/OrderListHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/common/database/OrderListHelper;->mInstance:Lcom/didi/common/database/OrderListHelper;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/didi/common/database/OrderListHelper;

    invoke-direct {v0}, Lcom/didi/common/database/OrderListHelper;-><init>()V

    sput-object v0, Lcom/didi/common/database/OrderListHelper;->mInstance:Lcom/didi/common/database/OrderListHelper;

    .line 32
    :cond_0
    sget-object v0, Lcom/didi/common/database/OrderListHelper;->mInstance:Lcom/didi/common/database/OrderListHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getInvitedPhoneList()Ljava/util/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 87
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 88
    .local v8, phoneNumberList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/DidiApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/database/OrderListHelper;->mContactsUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 90
    .local v7, phone:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 91
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "phone"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-static {v7}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    const/4 v6, 0x0

    .line 102
    :cond_2
    return-object v8
.end method

.method public static declared-synchronized isFroyoSDK()Z
    .locals 3

    .prologue
    .line 211
    const-class v1, Lcom/didi/common/database/OrderListHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/common/database/OrderListHelper;->SDK:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 212
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/common/database/OrderListHelper;->SDK:Ljava/lang/Integer;

    .line 214
    :cond_0
    sget-object v0, Lcom/didi/common/database/OrderListHelper;->SDK:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 215
    const/4 v0, 0x1

    .line 217
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private mergeState(Ljava/util/HashSet;Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/didi/common/database/Contact;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, invitedPhoneNumberList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p2, allContacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;>;"
    invoke-static {p2}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 56
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 57
    .local v2, phone:Ljava/lang/String;
    const/4 v0, 0x0

    .line 58
    .local v0, contacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #phone:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 60
    .restart local v2       #phone:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 61
    .restart local v0       #contacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;"
    invoke-direct {p0, v0}, Lcom/didi/common/database/OrderListHelper;->modifyState(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method private modifyState(Ljava/util/HashSet;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/didi/common/database/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, contacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 72
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/didi/common/database/Contact;>;"
    const/4 v0, 0x0

    .line 73
    .local v0, contact:Lcom/didi/common/database/Contact;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contact:Lcom/didi/common/database/Contact;
    check-cast v0, Lcom/didi/common/database/Contact;

    .line 75
    .restart local v0       #contact:Lcom/didi/common/database/Contact;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/didi/common/database/Contact;->setInvited()V

    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method

.method private putIntoMap(Lcom/didi/common/database/Contact;Ljava/util/HashMap;)V
    .locals 3
    .parameter "contact"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/database/Contact;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/didi/common/database/Contact;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;>;"
    invoke-virtual {p1}, Lcom/didi/common/database/Contact;->getContactNumber()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, phone:Ljava/lang/String;
    const/4 v1, 0x0

    .line 116
    .local v1, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;"
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;"
    check-cast v1, Ljava/util/HashSet;

    .line 119
    .restart local v1       #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;"
    if-nez v1, :cond_1

    .line 120
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 121
    .restart local v1       #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;"
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getAllContacts(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/database/Contact;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/didi/common/database/Contact;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p1, allContactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/database/Contact;>;"
    const/4 v3, 0x0

    .line 134
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v9, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;>;"
    const/4 v6, 0x0

    .line 136
    .local v6, contact:Lcom/didi/common/database/Contact;
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/base/DidiApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    .local v0, content:Landroid/content/ContentResolver;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "data1"

    aput-object v4, v2, v1

    const/4 v1, 0x2

    const-string v4, "photo_id"

    aput-object v4, v2, v1

    .line 138
    .local v2, PHONES_PROJECTION:[Ljava/lang/String;
    const-string v5, "display_name"

    .line 139
    .local v5, PHONE_SORT_ORDER:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/database/OrderListHelper;->isFroyoSDK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v5, "sort_key"

    .line 143
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 144
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 145
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 146
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    new-instance v6, Lcom/didi/common/database/Contact;

    .end local v6           #contact:Lcom/didi/common/database/Contact;
    invoke-direct {v6}, Lcom/didi/common/database/Contact;-><init>()V

    .line 148
    .restart local v6       #contact:Lcom/didi/common/database/Contact;
    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 149
    .local v11, phoneNumber:Ljava/lang/String;
    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 150
    .local v10, phoneName:Ljava/lang/String;
    const-wide v12, 0x7fffffffffffffffL

    .line 151
    .local v12, photoId:J
    const-string v1, "photo_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 152
    .local v8, id:I
    if-ltz v8, :cond_2

    .line 153
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 154
    :cond_2
    invoke-static {v11}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    invoke-static {v10}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    move-object v10, v11

    .line 160
    :cond_3
    invoke-virtual {v6, v10}, Lcom/didi/common/database/Contact;->setContactName(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v6, v11}, Lcom/didi/common/database/Contact;->setContactNumber(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v6, v12, v13}, Lcom/didi/common/database/Contact;->setPhotoId(J)V

    .line 163
    invoke-direct {p0, v6, v9}, Lcom/didi/common/database/OrderListHelper;->putIntoMap(Lcom/didi/common/database/Contact;Ljava/util/HashMap;)V

    .line 164
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v8           #id:I
    .end local v10           #phoneName:Ljava/lang/String;
    .end local v11           #phoneNumber:Ljava/lang/String;
    .end local v12           #photoId:J
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 168
    const/4 v7, 0x0

    .line 171
    :cond_5
    return-object v9
.end method

.method public getContacts()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/database/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v0, allContactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/database/Contact;>;"
    invoke-direct {p0}, Lcom/didi/common/database/OrderListHelper;->getInvitedPhoneList()Ljava/util/HashSet;

    move-result-object v2

    .line 41
    .local v2, invitedPhoneNumberList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/didi/common/database/OrderListHelper;->getAllContacts(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v1

    .line 42
    .local v1, allContactsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;>;"
    invoke-direct {p0, v2, v1}, Lcom/didi/common/database/OrderListHelper;->mergeState(Ljava/util/HashSet;Ljava/util/HashMap;)V

    .line 43
    return-object v0
.end method

.method public insertContactInvite(Lcom/didi/common/database/Contact;)J
    .locals 5
    .parameter "contact"

    .prologue
    .line 190
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {p1}, Lcom/didi/common/database/Contact;->getContactName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v3, "phone"

    invoke-virtual {p1}, Lcom/didi/common/database/Contact;->getContactNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v3, "invite"

    invoke-virtual {p1}, Lcom/didi/common/database/Contact;->getInvitedState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/base/DidiApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/database/OrderListHelper;->mContactsUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 195
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 197
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 202
    :goto_0
    return-wide v3

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 202
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public insertContactInvite(Ljava/util/HashSet;)J
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/didi/common/database/Contact;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;"
    invoke-static {p1}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    const-wide/16 v2, -0x1

    .line 185
    :goto_0
    return-wide v2

    .line 178
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 179
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/didi/common/database/Contact;>;"
    const/4 v0, 0x0

    .line 180
    .local v0, contact:Lcom/didi/common/database/Contact;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contact:Lcom/didi/common/database/Contact;
    check-cast v0, Lcom/didi/common/database/Contact;

    .line 182
    .restart local v0       #contact:Lcom/didi/common/database/Contact;
    invoke-virtual {v0}, Lcom/didi/common/database/Contact;->setInvited()V

    .line 183
    invoke-virtual {p0, v0}, Lcom/didi/common/database/OrderListHelper;->insertContactInvite(Lcom/didi/common/database/Contact;)J

    goto :goto_1

    .line 185
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
