package com.good.board.report.model;

import lombok.Getter;

@Getter
public class StdCmReportDTO {
    private final String std_cm_rp_seq;
    private final String std_cm_rp_regdate;
    private final String id;
    private final String std_cm_seq;
    private final String rp_seq;
    private final String std_cm_rp_detail;

    private StdCmReportDTO(Builder builder) {
        this.std_cm_rp_seq = builder.std_cm_rp_seq;
        this.std_cm_rp_regdate = builder.std_cm_rp_regdate;
        this.id = builder.id;
        this.std_cm_seq = builder.std_cm_seq;
        this.rp_seq = builder.rp_seq;
        this.std_cm_rp_detail = builder.std_cm_rp_detail;
    }

    public static class Builder {
        private String std_cm_rp_seq;
        private String std_cm_rp_regdate;
        private String id;
        private String std_cm_seq;
        private String rp_seq;
        private String std_cm_rp_detail;

        public Builder withStd_cm_rp_seq(String std_cm_rp_seq) {
            this.std_cm_rp_seq = std_cm_rp_seq;
            return this;
        }

        public Builder withStd_cm_rp_regdate(String std_cm_rp_regdate) {
            this.std_cm_rp_regdate = std_cm_rp_regdate;
            return this;
        }

        public Builder withId(String id) {
            this.id = id;
            return this;
        }

        public Builder withStd_cm_seq(String std_cm_seq) {
            this.std_cm_seq = std_cm_seq;
            return this;
        }

        public Builder withRp_seq(String rp_seq) {
            this.rp_seq = rp_seq;
            return this;
        }

        public Builder withStd_cm_rp_detail(String std_cm_rp_detail) {
            this.std_cm_rp_detail = std_cm_rp_detail;
            return this;
        }

        public StdCmReportDTO build() {
            return new StdCmReportDTO(this);
        }
    }
}
