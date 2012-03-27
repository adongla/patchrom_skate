.class Lcom/miui/backup/ScriptItemFactory;
.super Ljava/lang/Object;
.source "BackupRestoreStrategy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createItem(ILjava/lang/String;Ljava/lang/String;)Lcom/miui/backup/ScriptItem;
    .locals 1
    .parameter "cmd"
    .parameter "opt1"
    .parameter "opt2"

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 638
    .local v0, item:Lcom/miui/backup/ScriptItem;
    packed-switch p0, :pswitch_data_0

    .line 688
    const/4 v0, 0x0

    .line 691
    :goto_0
    return-object v0

    .line 640
    :pswitch_0
    new-instance v0, Lcom/miui/backup/ScriptCpItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptCpItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 643
    :pswitch_1
    new-instance v0, Lcom/miui/backup/ScriptCpDirItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptCpDirItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 646
    :pswitch_2
    new-instance v0, Lcom/miui/backup/ScriptRmItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1}, Lcom/miui/backup/ScriptRmItem;-><init>(Ljava/lang/String;)V

    .line 647
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 649
    :pswitch_3
    new-instance v0, Lcom/miui/backup/ScriptRmDirItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1}, Lcom/miui/backup/ScriptRmDirItem;-><init>(Ljava/lang/String;)V

    .line 650
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 652
    :pswitch_4
    new-instance v0, Lcom/miui/backup/ScriptChmodItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChmodItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 655
    :pswitch_5
    new-instance v0, Lcom/miui/backup/ScriptChgrpItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChgrpItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 658
    :pswitch_6
    new-instance v0, Lcom/miui/backup/ScriptChownItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChownItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 661
    :pswitch_7
    new-instance v0, Lcom/miui/backup/ScriptChmodRecurseItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChmodRecurseItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 664
    :pswitch_8
    new-instance v0, Lcom/miui/backup/ScriptChgrpRecurseItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChgrpRecurseItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 667
    :pswitch_9
    new-instance v0, Lcom/miui/backup/ScriptChownRecurseItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChownRecurseItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 670
    :pswitch_a
    new-instance v0, Lcom/miui/backup/ScriptMkdirsItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1}, Lcom/miui/backup/ScriptMkdirsItem;-><init>(Ljava/lang/String;)V

    .line 671
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 673
    :pswitch_b
    new-instance v0, Lcom/miui/backup/ScriptMvItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptMvItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 676
    :pswitch_c
    new-instance v0, Lcom/miui/backup/ScriptDuItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1}, Lcom/miui/backup/ScriptDuItem;-><init>(Ljava/lang/String;)V

    .line 677
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 679
    :pswitch_d
    new-instance v0, Lcom/miui/backup/ScriptCpDataItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptCpDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 682
    :pswitch_e
    new-instance v0, Lcom/miui/backup/ScriptSetPropItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptSetPropItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 685
    :pswitch_f
    new-instance v0, Lcom/miui/backup/ScriptGetPropItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptGetPropItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
